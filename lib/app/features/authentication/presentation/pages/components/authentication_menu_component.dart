import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/styles/app_typography.dart';

import 'authentication_animated_menu_indicator_component.dart';

class AuthenticationMenuComponent extends StatelessWidget {
  final PageController pageController;

  AuthenticationMenuComponent({super.key, required this.pageController});

  final ValueNotifier<int> _optionSelected = ValueNotifier<int>(0);

  void changePage({required int pageIndex}) {
    _optionSelected.value = pageIndex;
    pageController.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 600), curve: Curves.ease);
  }

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
                builder: (_, value, __) =>
                    AuthenticationAnimatedMenuIndicatorComponent(
                        optionSelected: _optionSelected.value),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () => changePage(pageIndex: 0),
                      child: Text(
                        'Entrar',
                        style: AppTypography.textButton(),
                      ),
                    ),
                    TextButton(
                      onPressed: () => changePage(pageIndex: 1),
                      child: Text(
                        'Cadastro',
                        style: AppTypography.textButton(),
                      ),
                    ),
                    TextButton(
                      onPressed: () => changePage(pageIndex: 2),
                      child: Text(
                        'Senha',
                        style: AppTypography.textButton(),
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
