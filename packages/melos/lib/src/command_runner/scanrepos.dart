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
import 'package:dart_bom/common/path_ext.dart';
import 'package:dart_bom/repos_config.dart';
import 'package:path/path.dart';
import 'package:pubspec/pubspec.dart';
import 'package:yaml/yaml.dart';
import '../../melos.dart';
import '../common/git.dart';
import 'base.dart';

class ScanRepos extends MelosCommand {
  ScanRepos(super.config) {
    setupPackageFilterParser();
  }

  @override
  final String name = 'scanrepos';

  @override
  final String description =
      'Tries to append any local repositories to your repos.yaml file.';

  @override
  Future<void> run() async {
    final ws = await MelosWorkspace.fromConfig(config, logger: logger);
    final workspaceDir = Directory(ws.path);

    late Set<String> transitives;
    final pubspecLock = workspaceDir.child('pubspec.lock');
    if (pubspecLock.existsSync()) {
      final lockYaml = readTextFile(pubspecLock.path);
      final lock = loadYamlDocument(lockYaml);
      transitives = ((lock.contents as YamlMap)['packages'] as YamlMap)
          .keys
          .cast<String>()
          .toSet();
    } else {
      transitives = const {};
    }

    final reposFile = workspaceDir.child('repos.yaml');
    var repoConfig = reposFile.existsSync()
        ? ReposConfig.read(reposFile.absolute.path)
        : ReposConfig.empty;

    const printYml = YamlToString();

    for (final package in ws.allPackages.values.where(
      (element) => transitives.isEmpty || transitives.contains(element.name),
    )) {
      final packageName = package.name;
      final ch = logger.child(packageName);
      if (!repoConfig.sources.containsKey(packageName)) {
        String? url;
        String? branch;
        String? path;
        final packageDir = Directory(package.path);
        final result =
            packageDir.findParent((directory) => directory.contains('.git'));
        if (result.found != null) {
          if (result.path.isNotEmpty) {
            path = joinAll(result.path.reversed);
          }
          final gitFolder = result.found!.path;
          url = (await gitRemoteList(
            workingDirectory: gitFolder,
            logger: logger,
          ))['origin'];
          branch = await gitGetCurrentBranchName(
            workingDirectory: gitFolder,
            logger: logger,
          );
          if (branch == 'HEAD' || branch == 'master' || branch == 'main') {
            branch = null;
          }
        }

        final packagePubspec = await PubSpec.load(packageDir);
        if (packagePubspec.homepage?.contains('github') ?? false) {
          url = packagePubspec.homepage;
        }

        if (url != null) {
          // Try to determine how this is set up
          final thisPackageConfig = PackageCheckoutConfig(
            git: GitReference(url, branch, path),
            repo: packagePubspec.publishTo?.toString(),
            source:
                'Added via scanrepos on ${DateTime.now().toIso8601String()}',
          );
          repoConfig = repoConfig.copyWith(
            sources: {packageName: thisPackageConfig},
          );
          ch.child(
            printYml.toYamlString(
              thisPackageConfig.toJson(),
            ),
          );
        } else {
          ch.log('Could not determine repo');
        }
      } else {
        ch.log('Already exists - skipping');
      }
    }

    reposFile.writeAsStringSync(printYml.toYamlString(repoConfig.toJson()));
  }
}
