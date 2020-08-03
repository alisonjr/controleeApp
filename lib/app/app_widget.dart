import 'package:controlee/utils/environment_vars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: EnvironmentVars.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purpleAccent,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
