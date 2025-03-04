import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:projects2/config/app_runtime.dart';
import 'package:projects2/my_app.dart';
import 'package:projects2/providers/app_provider.dart';
import 'package:projects2/services/router.service.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'home.page.dart';

void main() async {
  final routerService = RouterService(
    initialPage: GoRoute(
      path: MyHomePage.routeID,
      builder: (context, state) => MyHomePage(),
    ),
  );
  Provider<RouterService>.value(value: routerService);

  final appProvider = AppProvider();
  Provider<AppProvider>.value(value: appProvider);

  final appRuntime = AppRuntime(
    appProvider: appProvider,
    routerService: routerService,
  );

  await appProvider.initialize(appRuntime);

  runApp(
    MyApp(
      appRuntime: appRuntime,
    ),
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
