import 'package:flutter/material.dart';

import '../../../../../core/shared/widgets/gradient_background_widget.dart';

import 'components/home_app_bar_component.dart';
import 'components/home_heat_map_component.dart';
import 'components/home_habits_list_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          GradientBackgroundWidget(),
          Column(
            children: [
              HomeAppBarComponent(),
              HomeHeatMapComponent(),
              HomeHabitsListComponent(),
            ],
          )
        ],
      ),
    );
  }
}
