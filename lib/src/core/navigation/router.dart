import 'package:flutter/material.dart';
import 'package:inmobiliariauy/src/core/navigation/routing_constants.dart';
import 'package:inmobiliariauy/src/ui/scenes/home/home.dart';
import 'package:inmobiliariauy/src/ui/scenes/new_register/new_register.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => Home());
    case NewRegisterRoute:
      return MaterialPageRoute(builder: (context) => NewRegister());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}.'),
          ),
        ),
      );
  }
}
