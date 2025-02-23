import 'package:go_router/go_router.dart';
import 'package:projects2/features/features.dart';
import 'package:projects2/home.page.dart';

class RouterService {
  final routes = GoRouter(
    routes: [
      GoRoute(
        path: MyHomePage.routeID,
        builder: (context, state) => MyHomePage(),
      ),
      GoRoute(
        path: AuthenticationPage.routeID,
        builder: (context, state) => AuthenticationPage(),
      ),
      GoRoute(
        path: RegisterPage.routeID,
        builder: (context, state) => RegisterPage(),
      ),
    ],
  );
}
