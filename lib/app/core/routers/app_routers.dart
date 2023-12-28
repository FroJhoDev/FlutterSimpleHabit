import 'package:get/route_manager.dart';

import '../../features/habits/presentation/pages/home/home_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/authentication/presentation/pages/authentication_page.dart';

appRouters() => [
      GetPage(
        name: '/onboarding',
        page: () => OnboardingPage(),
      ),
      GetPage(
        name: '/auth',
        page: () => AuthenticationPage(),
      ),
      GetPage(
        name: '/home',
        page: () => const HomePage(),
      ),
    ];
