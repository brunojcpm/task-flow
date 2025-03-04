import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterService {
  final List<RouteBase> _routes = [];
  final RouteBase initialPage;
  final RouteBase? splashScreenPage;

  RouterService({
    required this.initialPage,
    this.splashScreenPage,
  }) {
    _routes.add(initialPage);
  }

  List<RouteBase> get routes => _routes;

  void registerRoute(
    String route, {
    required Widget page,
  }) {
    _routes.add(
      GoRoute(
        path: route,
        builder: (context, state) => page,
      ),
    );
  }
}
