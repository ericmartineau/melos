part of 'runner.dart';

mixin _CheckoutMixin on _BootstrapMixin {
  Future<void> checkoutSources({
    PackageFilter? filter,
  }) async {
    final workspace = await createWorkspace(filter: filter);
    if (workspace.config.checkout.enabled) {
      logger.stdout('');
      logger.stdout('Generating IntelliJ IDE files...');

      await workspace.ide.intelliJ.withMode(forceMode: forceMode).generate();
      logger.stdout('  > Success');
    }
  }
}
