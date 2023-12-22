import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_animations.dart';

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
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Deletar',
            style:
                TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancelar',
              style: TextStyle(
                  color: Colors.blue.shade200, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
