import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import 'components/authentication_forgot_password_body_component.dart';
import 'components/authentication_login_body_component.dart';
import 'components/authentication_register_body_component.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({super.key});

  final ValueNotifier<int> _optionSelected = ValueNotifier<int>(0);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade500,
                ],
              ),
            ),
          ),
          Positioned(
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
                      controller: _pageController,
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RotatedBox(
              quarterTurns: 1,
              child: SizedBox(
                width: context.percentWidth(1.0),
                height: context.percentHeight(0.11),
                child: Stack(
                  children: [
                    ValueListenableBuilder(
                        valueListenable: _optionSelected,
                        builder: (_, value, __) {
                          return AnimatedAlign(
                            alignment: _optionSelected.value == 0
                                ? Alignment.topLeft
                                : _optionSelected.value == 1
                                    ? Alignment.topCenter
                                    : Alignment.topRight,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                            child: SizedBox(
                              width: context.percentWidth(0.33),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade500,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(100.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 5.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              _optionSelected.value = 0;
                              _pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.ease);
                            },
                            child: const Text(
                              'Entrar',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _optionSelected.value = 1;
                              _pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.ease);
                            },
                            child: const Text(
                              'Cadastro',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _optionSelected.value = 2;
                              _pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.ease);
                            },
                            child: const Text(
                              'Senha',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: SizedBox(
              height: context.percentHeight(0.1),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Entre Também Com',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.facebook_rounded,
                      size: 32.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
