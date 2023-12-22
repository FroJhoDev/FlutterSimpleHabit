import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/gradient_background_widget.dart';

import 'components/authentication_menu_component.dart';
import 'components/authentication_page_view_component.dart';
import 'components/authentication_social_options_component.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const GradientBackgroundWidget(),
          AuthenticationPageViewComponent(pageController: _pageController),
          AuthenticationMenuComponent(pageController: _pageController),
          const AuthenticationSocialOptionsComponent(),
        ],
      ),
    );
  }
}
