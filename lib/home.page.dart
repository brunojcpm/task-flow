import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projects2/features/features.dart';

class MyHomePage extends StatelessWidget {
  static String routeID = '/';

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Flow'),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => context.push(
          AuthenticationPage.routeID,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
