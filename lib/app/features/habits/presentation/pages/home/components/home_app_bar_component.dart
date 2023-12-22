import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_animations.dart';

class HomeAppBarComponent extends StatelessWidget {
  const HomeAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            ),
            Hero(
              tag: 'logo',
              child: Lottie.asset(AppAnimations.logoAnimated,
                  width: 90.0, repeat: false),
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.grid_view_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
