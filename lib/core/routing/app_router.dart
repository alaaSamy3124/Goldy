import 'package:flutter/material.dart';
import 'package:goldy/core/routing/routers.dart';

class RouterGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomePage());
      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (context) => SignUp());
      case AppRoutes.signUpScreen:
        return MaterialPageRoute(builder: (context) => SignUp());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Text('NO ROUTES FOUND')),
        );
    }
  }
}
