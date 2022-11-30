/*
 * Copyright (c) 2016-present Invertase Limited & Contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this library except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import 'dart:io';

import 'package:dart_bom/common/io.dart';
import 'package:dart_bom/dart_bom.dart';
import 'package:dart_bom/local_pubspec.dart';
import 'package:dart_bom/repos_config.dart';
import 'package:path/path.dart';
import 'package:pubspec/pubspec.dart';
import '../../melos.dart';
import 'base.dart';

///
/// Command that generates pubspec_overrides.yml file for this project.
class Pubspec extends MelosCommand {
  Pubspec(super.config) {
    setupPackageFilterParser();
    argParser.addOption(
      'mode',
      abbr: 'm',
      allowed: CheckoutMode.values.map((e) => e.name),
      allowedHelp: {
        CheckoutMode.published.name:
            'The latest published version on pub.dev (or private repo)',
        CheckoutMode.unpublished.name:
            'The version present in local unpublished project files',
        CheckoutMode.local.name: 'Locally checked out project files',
        CheckoutMode.git.name: 'Use a git repository url',
      },
      help: 'The default mode for each dependency defined in repos.yaml',
    );
  }

  @override
  final String name = 'pubspec';

  @override
  final String description =
      'Generates pubspec_overrides.yaml file based on your project settings.';

  @override
  Future<void> run() async {
    final ws = await MelosWorkspace.fromConfig(config, logger: logger);
    // Include dependency_overrides from main pubspec.  These will be ignored
    // in the presence of a pubspec_override.yaml file
    final projectPubspec = await PubSpec.load(Directory(ws.path));

    final reposPath = config.reposPath ?? join(ws.path, 'repos.yaml');
    final reposExists = !File(reposPath).existsSync();
    if (reposExists) {
      logger.warning('No repos.yaml file at $reposPath');
    }

    var repos = reposExists
        ? ReposConfig.empty
        : ReposConfig.read(
            config.reposPath ?? join(ws.path, 'repos.yaml'),
          );

    if (argResults?.wasParsed('mode') ?? false) {
      final parsedMode = argResults!.get<String>('mode');
      logger.log('Using mode: $parsedMode');

      repos = repos.copyWith(
        defaultMode: CheckoutMode.tryParse(parsedMode),
      );
    }

    final overridePubspec = await createPubspecOverrides(
      DartReposOptions(
        workingDirectory: ws.path,
        repos: repos,
        checkout: true,
      ),
      logger.log,
    );

    logger.log(
      'pubspec.yaml: ${overridePubspec.dependencyOverrides.length} overrides',
    );

    logger.log(
      'repos.yaml: ${repos.sources.length} overrides',
    );

    writeTextFile(
      join(ws.path, 'pubspec_overrides.yaml'),
      const YamlToString().toYamlString({
        'dependency_overrides': {
          ...projectPubspec.dependencyOverrides,
          ...overridePubspec.dependencies,
          ...overridePubspec.devDependencies,
          ...overridePubspec.dependencyOverrides,
        }.map((key, value) => MapEntry(key, value.toJson()))
      }),
    );
  }
}
