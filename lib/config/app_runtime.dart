import 'package:projects2/providers/app_provider.dart';
import 'package:projects2/services/router.service.dart';

class AppRuntime {
  final AppProvider appProvider;
  final RouterService routerService;

  AppRuntime({
    required this.appProvider,
    required this.routerService,
  });
}
