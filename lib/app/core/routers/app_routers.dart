import 'package:get/route_manager.dart';

import '../../features/habits/presentation/pages/home/home_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/authentication/presentation/pages/authentication_page.dart';

import '../bindings/authentication_binding.dart';

import '../middlewares/onboarding_view_middleware.dart';

class AppRouters {
  static final pages = [
    GetPage(
        name: '/onboarding',
        page: () => OnboardingPage(),
        middlewares: [OnboardingViewMiddleware()]),
    GetPage(
        name: '/auth',
        page: () => AuthenticationPage(),
        binding: AuthenticationBinding()),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
    ),
  ];
}
