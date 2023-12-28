import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'core/styles/app_theme.dart';
import 'core/routers/app_routers.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SimpleHabit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: '/onboarding',
      getPages: appRouters(),
    );
  }
}
