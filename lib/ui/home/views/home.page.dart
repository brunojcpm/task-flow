import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projects2/ui/ui.dart';

class HomePage extends StatelessWidget {
  static String routeID = '/';

  const HomePage({super.key});

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
