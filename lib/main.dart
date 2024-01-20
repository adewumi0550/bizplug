import 'package:bizplug/core/user_app_color.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/splash.dart';
import 'features/auth/presentation/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
