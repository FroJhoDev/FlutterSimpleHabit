import 'package:flutter/material.dart';

import 'home_dialog_remove_habit_component.dart';

class HomeHabitItemComponenet extends StatelessWidget {
  const HomeHabitItemComponenet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 8.0,
              offset: const Offset(0, 5),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 1.9,
            child: Checkbox(
              value: false,
              shape: const CircleBorder(),
              side: BorderSide(color: Colors.blue.shade200, width: 2.0),
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 5.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estudar FLutter',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '7:30',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const HomeDialogRemoveHabitComponent();
                  });
            },
            icon: Icon(
              Icons.delete_outline,
              color: Colors.grey.shade400,
              size: 36.0,
            ),
          )
        ],
      ),
    );
  }
}
