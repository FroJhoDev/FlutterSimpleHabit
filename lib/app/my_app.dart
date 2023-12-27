import 'package:flutter/material.dart';

import 'core/styles/app_theme.dart';

import 'features/habits/presentation/pages/home/home_page.dart';
import 'features/onboarding/presentation/pages/onboarding_page.dart';
import 'features/authentication/presentation/pages/authentication_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleHabit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingPage(),
        '/login': (context) => AuthenticationPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
