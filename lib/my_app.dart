import 'package:flutter/material.dart';
import 'package:projects2/config/app_runtime.dart';
import 'package:projects2/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.appRuntime,
  });

  final AppRuntime appRuntime;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TaskFlow',
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme(),
        useMaterial3: true,
      ),
      routerConfig: appRuntime.routerService.routes,
    );
  }
}
