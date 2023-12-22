import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

class AuthenticationMenuComponent extends StatelessWidget {
  
  final PageController pageController;

  AuthenticationMenuComponent({super.key, required this.pageController});

  final ValueNotifier<int> _optionSelected = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Align(
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
                        pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.ease,
                        );
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _optionSelected.value = 1;
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: const Text(
                        'Cadastro',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _optionSelected.value = 2;
                        pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: const Text(
                        'Senha',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
