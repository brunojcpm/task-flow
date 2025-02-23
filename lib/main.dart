import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projects2/config/app_runtime.dart';
import 'package:projects2/my_app.dart';
import 'package:projects2/services/router.service.dart';
import 'firebase_options.dart';

void main() async {
  final routerService = RouterService();

  final appRuntime = AppRuntime(
    routerService: routerService,
  );

  runApp(
    MyApp(
      appRuntime: appRuntime,
    ),
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
