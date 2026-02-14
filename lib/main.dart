import 'package:flutter/material.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/core/routing/app_router.dart';
import 'package:goldy/core/routing/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goldy',
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
