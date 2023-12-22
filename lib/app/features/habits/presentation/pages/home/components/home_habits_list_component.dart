import 'package:flutter/material.dart';

import '../../../../../../core/styles/app_typography.dart';

import 'home_habit_item_componenet.dart';
import 'home_dialog_new_habit_component.dart';

class HomeHabitsListComponent extends StatelessWidget {
  const HomeHabitsListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Habitos do Dia', style: AppTypography.subTitle()),
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => HomeDialogNewHabitComponent());
                    },
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue.shade700,
                      size: 36.0,
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const HomeHabitItemComponenet();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
