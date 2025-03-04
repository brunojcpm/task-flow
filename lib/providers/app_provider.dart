import 'package:projects2/config/app_runtime.dart';
import 'package:projects2/features/features.dart';

class AppProvider {
  Future<void> initialize(AppRuntime appRuntime) async {
    await registerAuthRoutes(appRuntime: appRuntime);
  }
}
