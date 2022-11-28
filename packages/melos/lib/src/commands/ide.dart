part of 'runner.dart';

mixin _IdeMixin on _BootstrapMixin {
  Future<void> generateIde({
    PackageFilter? filter,
    bool clean = false,
    bool forceMode = false,
  }) async {
    final workspace = await createWorkspace(filter: filter);
    if (workspace.config.ide.intelliJ.enabled) {
      if (clean) {
        logger.stdout('');
        logger.stdout('Cleaning IntelliJ files...');

        await cleanIntelliJ(workspace);
      } else {
        logger.stdout('');
        logger.stdout('Generating IntelliJ IDE files...');

        await workspace.ide.intelliJ.withMode(forceMode: forceMode).generate();
        logger.stdout('  > Success');
      }
    }
  }
}
