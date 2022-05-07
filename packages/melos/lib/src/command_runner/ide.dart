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

import 'dart:async';

import '../commands/runner.dart';
import '../workspace_configs.dart';

import 'base.dart';

class IdeCommand extends MelosCommand {
  IdeCommand(MelosWorkspaceConfig config) : super(config) {
    setupPackageFilterParser();
    argParser.addFlag('clean', aliases: ['c']);
    argParser.addFlag('force', aliases: ['f']);
  }

  @override
  final String name = 'ide';

  @override
  final List<String> aliases = [];

  @override
  final String description = 'Create ide project';

  @override
  FutureOr<void>? run() {
    final melos = Melos(logger: logger, config: config);

    return melos.generateIde(
      filter: parsePackageFilter(config.path),
      clean: argResults != null && argResults!['clean'] == true,
      forceMode: argResults != null && argResults!['force'] == true,
    );
  }
}
