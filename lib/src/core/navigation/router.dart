import 'package:flutter/material.dart';
import '../services/../navigation/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case ProfileRoute:
    //   return MaterialPageRoute(builder: (context) => Profile());
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
