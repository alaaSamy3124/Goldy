import 'package:flutter/material.dart';
import 'package:goldy/core/routing/routers.dart';
import 'package:goldy/core/presentation/home_screen.dart';
import 'package:goldy/features/gold/presentation/screens/widgets/gold_screen.dart';

class RouterGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.goldScreen:
        return MaterialPageRoute(builder: (context) => GoldScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Text('NO ROUTES FOUND')),
        );
    }
  }
}
