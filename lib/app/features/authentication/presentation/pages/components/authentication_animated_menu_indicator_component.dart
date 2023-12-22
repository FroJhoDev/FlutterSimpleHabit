import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

class AuthenticationAnimatedMenuIndicatorComponent extends StatelessWidget {

  final int optionSelected;

  const AuthenticationAnimatedMenuIndicatorComponent({super.key, required this.optionSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      alignment: optionSelected == 0
          ? Alignment.topLeft
          : optionSelected == 1
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
  }
}
