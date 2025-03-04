import 'package:projects2/config/app_runtime.dart';
import 'package:projects2/features/auth/auth.dart';

export 'modules/credential.module.dart';
export 'views/authentication.page.dart';
export 'views/register.page.dart';

registerAuthRoutes({
  required AppRuntime appRuntime,
}) {
  appRuntime.routerService.registerRoute(
    AuthenticationPage.routeID,
    page: AuthenticationPage(),
  );

  appRuntime.routerService.registerRoute(
    RegisterPage.routeID,
    page: RegisterPage(),
  );
}
