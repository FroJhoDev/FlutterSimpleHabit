import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_animations.dart';
import '../../../../../../core/styles/app_typography.dart';

class HomeDialogRemoveHabitComponent extends StatelessWidget {
  const HomeDialogRemoveHabitComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(AppAnimations.removeAnimated, animate: false),
          Text(
            'Tem certeza que deseja remover esse hábito da sua lista?',
            style: AppTypography.description(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Deletar',
            style:
                AppTypography.textButton().copyWith(color: Colors.redAccent, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancelar',
              style: AppTypography.textButton().copyWith(color: Colors.blue.shade200, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
