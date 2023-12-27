import 'package:flutter/material.dart';

import '../../../../../core/styles/app_typography.dart';
import 'onboarding_dot_indicator_component.dart';

class OnboardingPageControlsComponent extends StatelessWidget {
  final Function() onPressedSkip;
  final Function() onPressedNext;
  final PageController pageController;
  final ValueNotifier<int> pageIndex;
  final int listLength;

  const OnboardingPageControlsComponent(
      {super.key,
      required this.onPressedSkip,
      required this.onPressedNext,
      required this.pageController,
      required this.pageIndex,
      required this.listLength});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (_, value, __) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: onPressedSkip,
                    child: Text(
                      pageIndex.value == listLength - 1 ? 'Voltar' : 'Pular',
                      style: AppTypography.textButton()
                          .copyWith(color: Colors.white70),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          listLength,
                          (index) => OnboardingDotIndicatorComponent(
                            pageIndex: pageIndex.value,
                            dotIndex: index,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: onPressedNext,
                    child: Text(
                      pageIndex.value == listLength - 1 ? 'Entrar' : 'Próximo',
                      style: AppTypography.textButton(),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
