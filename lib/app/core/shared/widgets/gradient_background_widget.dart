import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  const GradientBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
