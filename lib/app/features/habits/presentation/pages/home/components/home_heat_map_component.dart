import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class HomeHeatMapComponent extends StatelessWidget {
  const HomeHeatMapComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15.0),
      child: HeatMap(
        endDate: DateTime.now(),
        datasets: {
          DateTime(2023, 11, 6): 1,
          DateTime(2023, 11, 7): 3,
          DateTime(2023, 11, 8): 4,
          DateTime(2023, 11, 9): 8,
          DateTime(2023, 11, 13): 6,
          DateTime(2023, 12, 1): 10,
        },
        colorMode: ColorMode.color,
        defaultColor: Colors.blueAccent[100],
        textColor: Colors.white,
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 25.0,
        colorsets: const {
          1: Color.fromARGB(20, 255, 157, 0),
          2: Color.fromARGB(40, 255, 157, 0),
          3: Color.fromARGB(60, 255, 157, 0),
          4: Color.fromARGB(80, 255, 157, 0),
          5: Color.fromARGB(100, 255, 157, 0),
          6: Color.fromARGB(120, 255, 157, 0),
          7: Color.fromARGB(140, 255, 157, 0),
          8: Color.fromARGB(180, 255, 157, 0),
          9: Color.fromARGB(200, 255, 157, 0),
          10: Color.fromARGB(255, 255, 157, 0),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}
