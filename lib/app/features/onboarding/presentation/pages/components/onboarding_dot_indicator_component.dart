import 'package:flutter/material.dart';

class OnboardingDotIndicatorComponent extends StatelessWidget {

  final int pageIndex;
  final int dotIndex;

  const OnboardingDotIndicatorComponent({super.key, required this.pageIndex, required this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: pageIndex == dotIndex ? 30.0 : 15.0,
      height: 15.0,
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
        color: pageIndex == dotIndex ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
