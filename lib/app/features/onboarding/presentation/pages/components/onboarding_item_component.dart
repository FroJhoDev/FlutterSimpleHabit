import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/assets/app_animations.dart';
import '../../../../../core/styles/app_typography.dart';

class OnboardingItemComponent extends StatelessWidget {
  const OnboardingItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registre Seus Habitos',
            style: AppTypography.title().copyWith(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(
              width: context.percentWidth(0.8),
              height: context.percentHeight(0.4),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: context.percentWidth(0.75),
                      height: context.percentHeight(0.35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.grey.shade300,
                              ])),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Lottie.asset(
                      AppAnimations.scheduleAnimated,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Além de compreender a importância de criar hábitos, você precisa entender a importância que essas metas têm.',
              textAlign: TextAlign.center,
              style: AppTypography.description().copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
