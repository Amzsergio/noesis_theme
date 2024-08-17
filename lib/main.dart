import 'package:flutter/material.dart';
import 'package:noesis_theme/config/router/app_router.dart';
import 'package:noesis_theme/presentation/screens/home/home_screen.dart';
import 'package:noesis_theme/presentation/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
