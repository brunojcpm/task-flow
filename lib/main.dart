import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projects2/app/app.module.dart';
import 'package:projects2/app/app.widget.dart';
import 'package:projects2/app/app.services.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final appServices = AppServices(httpService: DioHttpService());

  runApp(
    MultiProvider(
      providers: appModule(
        appServices: appServices,
      ),
      child: AppWidget(),
    ),
  );
}
