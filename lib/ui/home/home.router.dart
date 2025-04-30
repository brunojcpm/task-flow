import 'package:go_router/go_router.dart';
import 'package:projects2/ui/ui.dart';

final List<GoRoute> homeRouter = [
  GoRoute(
    path: HomePage.routeID,
    builder: (_, __) => HomePage(),
  ),
];
