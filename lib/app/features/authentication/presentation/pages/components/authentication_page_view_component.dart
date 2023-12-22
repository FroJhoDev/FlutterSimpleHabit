import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import 'authentication_login_body_component.dart';
import 'authentication_register_body_component.dart';
import 'authentication_forgot_password_body_component.dart';

class AuthenticationPageViewComponent extends StatelessWidget {
  final PageController pageController;

  const AuthenticationPageViewComponent({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: SafeArea(
        child: Container(
          width: context.percentWidth(0.8),
          height: context.percentHeight(0.86),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(60.0),
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  AuthenticationLoginBodyComponent(),
                  AuthenticationRegisterBodyComponent(),
                  AuthenticationForgotPasswordBodyComponent(),
                ],
              )),
        ),
      ),
    );
  }
}
