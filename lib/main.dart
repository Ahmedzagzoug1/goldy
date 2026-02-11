import 'package:flutter/material.dart';
import 'package:goldy/core/routing/app_router.dart';
import 'package:goldy/core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
