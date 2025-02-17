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
 */

import 'dart:io';

import 'package:melos/src/common/glob.dart';
import 'package:melos/src/package.dart';
import 'package:melos/src/workspace.dart';
import 'package:melos/src/workspace_configs.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec/pubspec.dart';
import 'package:test/test.dart';

import 'matchers.dart';
import 'mock_fs.dart';
import 'mock_workspace_fs.dart';
import 'utils.dart';

void main() {
  group('Workspace', () {
    test('throws if multiple packages have the same name', () async {
      final workspaceDir = createTemporaryWorkspaceDirectory();

      await createProject(
        workspaceDir,
        const PubSpec(name: 'a'),
      );
      await createProject(
        workspaceDir,
        const PubSpec(name: 'example'),
        path: 'packages/a/example',
      );
      await createProject(
        workspaceDir,
        const PubSpec(name: 'b'),
      );
      await createProject(
        workspaceDir,
        const PubSpec(name: 'example'),
        path: 'packages/b/example',
      );

      await expectLater(
        () async => MelosWorkspace.fromConfig(
          await MelosWorkspaceConfig.fromDirectory(workspaceDir),
          logger: TestLogger(),
        ),
        throwsMelosConfigException(
          message: anyOf(
            '''
Multiple packages with the name `example` found in the workspace, which is unsupported.
To fix this problem, consider renaming your packages to have a unique name.

The packages that caused the problem are:
- example at packages/a/example
- example at packages/b/example
''',
            '''
Multiple packages with the name `example` found in the workspace, which is unsupported.
To fix this problem, consider renaming your packages to have a unique name.

The packages that caused the problem are:
- example at packages/b/example
- example at packages/a/example
''',
          ),
        ),
      );
    });

    test(
      'can be accessed from anywhere within a workspace',
      withMockFs(() async {
        final mockWorkspaceRootDir = createMockWorkspaceFs(
          packages: [
            MockPackageFs(name: 'a'),
            MockPackageFs(name: 'b'),
          ],
        );

        final aDir = Directory('${mockWorkspaceRootDir.path}/packages/a');
        final config = await MelosWorkspaceConfig.fromDirectory(aDir);
        final workspace = await MelosWorkspace.fromConfig(
          config,
          logger: TestLogger(),
        );

        expect(
          workspace.filteredPackages.values,
          unorderedEquals(<Object>[
            packageNamed('a'),
            packageNamed('b'),
          ]),
        );
      }),
    );

    test(
      'does not include projects inside packages/whatever/.dart_tool when no melos.yaml is specified',
      withMockFs(() async {
        // regression test for https://github.com/invertase/melos/issues/101

        final mockWorkspaceRootDir = createMockWorkspaceFs(
          workspaceRoot: '/root',
          packages: [
            MockPackageFs(name: 'a'),
            MockPackageFs(name: 'b', path: '/root/packages/a/.dart_tool/b'),
          ],
        );

        final config = await MelosWorkspaceConfig.fromDirectory(
          mockWorkspaceRootDir,
        );
        final workspace = await MelosWorkspace.fromConfig(
          config,
          logger: TestLogger(),
        );

        expect(
          workspace.filteredPackages.values,
          [packageNamed('a')],
        );
      }),
    );

    test('load workspace config when workspace contains broken symlink',
        () async {
      final workspaceDir = createTemporaryWorkspaceDirectory();

      final link = Link(p.join(workspaceDir.path, 'link'));
      await link.create(p.join(workspaceDir.path, 'does-not-exist'));

      await MelosWorkspace.fromConfig(
        await MelosWorkspaceConfig.fromDirectory(workspaceDir),
        logger: TestLogger(),
      );
    });

    group('package filtering', () {
      group('--include-dependencies', () {
        test(
          'includes the scoped package',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('b', currentDirectoryPath: workspaceDir.path)
                ],
                includeDependencies: true,
              ),
              logger: TestLogger(),
            );

            expect(workspace.filteredPackages.values, [packageNamed('b')]);
          }),
        );

        test(
          'includes direct dependencies',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('a', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependencies: true,
              ),
              logger: TestLogger(),
            );

            expect(
              workspace.filteredPackages.values,
              unorderedEquals(<Matcher>[
                packageNamed('a'),
                packageNamed('b'),
              ]),
            );
          }),
        );

        test(
          'includes transient dependencies',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b', dependencies: ['c']),
                MockPackageFs(name: 'c'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('a', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependencies: true,
              ),
              logger: TestLogger(),
            );

            expect(
              workspace.filteredPackages.values,
              containsAll(<Matcher>[
                packageNamed('a'),
                packageNamed('b'),
                packageNamed('c'), // This dep is transitive
              ]),
            );
          }),
        );

        test(
          'does not include duplicates',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b', 'c']),
                MockPackageFs(name: 'b', dependencies: ['d']),
                MockPackageFs(name: 'c', dependencies: ['d']),
                MockPackageFs(name: 'd'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('a', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependencies: true,
              ),
              logger: TestLogger(),
            );

            expect(workspace.filteredPackages.values, hasLength(4));
            expect(
              workspace.filteredPackages.values,
              isNot(containsDuplicates),
            );
          }),
        );
      });

      group('--include-dependents', () {
        test(
          'includes the scoped package',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('a', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependents: true,
              ),
              logger: TestLogger(),
            );

            expect(workspace.filteredPackages.values, [packageNamed('a')]);
          }),
        );

        test(
          'includes direct dependents',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('b', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependents: true,
              ),
              logger: TestLogger(),
            );

            expect(workspace.filteredPackages.values, hasLength(2));
            expect(
              workspace.filteredPackages.values,
              containsAll(<Matcher>[packageNamed('a'), packageNamed('b')]),
            );
          }),
        );

        test(
          'includes transient dependents',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b']),
                MockPackageFs(name: 'b', dependencies: ['c']),
                MockPackageFs(name: 'c'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('c', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependents: true,
              ),
              logger: TestLogger(),
            );

            expect(
              workspace.filteredPackages.values,
              containsAll(<Matcher>[
                packageNamed('a'),
                packageNamed('b'),
                packageNamed('c'), // This dep is transitive
              ]),
            );
          }),
        );

        test(
          'does not include duplicates',
          withMockFs(() async {
            final workspaceDir = createMockWorkspaceFs(
              packages: [
                MockPackageFs(name: 'a', dependencies: ['b', 'c']),
                MockPackageFs(name: 'b', dependencies: ['d']),
                MockPackageFs(name: 'c', dependencies: ['d']),
                MockPackageFs(name: 'd'),
              ],
            );
            final config = await MelosWorkspaceConfig.fromDirectory(
              workspaceDir,
            );
            final workspace = await MelosWorkspace.fromConfig(
              config,
              filter: PackageFilter(
                scope: [
                  createGlob('d', currentDirectoryPath: workspaceDir.path),
                ],
                includeDependents: true,
              ),
              logger: TestLogger(),
            );

            expect(workspace.filteredPackages.values, hasLength(4));
            expect(
              workspace.filteredPackages.values,
              isNot(containsDuplicates),
            );
          }),
        );
      });
    });
  });
}
