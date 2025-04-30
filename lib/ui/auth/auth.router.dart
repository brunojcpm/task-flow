import 'package:go_router/go_router.dart';

import 'views/authentication.page.dart';
import 'views/register.page.dart';

final List<GoRoute> authRouter = [
  GoRoute(
    path: AuthenticationPage.routeID,
    builder: (_, __) => AuthenticationPage(),
  ),
  GoRoute(
    path: RegisterPage.routeID,
    builder: (_, __) => RegisterPage(),
  ),
];
