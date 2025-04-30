import 'package:go_router/go_router.dart';
import 'package:projects2/ui/ui.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ...homeRouter,
    ...authRouter,
  ],
);
