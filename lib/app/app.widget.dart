import 'package:flutter/material.dart';
import 'package:projects2/_themes/default.theme.dart';
import 'package:projects2/app/app.router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TaskFlow',
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme(),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
