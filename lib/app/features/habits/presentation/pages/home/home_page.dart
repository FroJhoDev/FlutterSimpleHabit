import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import '../../../../../core/assets/app_animations.dart';
import '../../../../../core/shared/widgets/text_field_custom_widget.dart';
import '../../../../../core/shared/widgets/gradient_background_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _timeTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackgroundWidget(),
          Column(
            children: [
              SafeArea(
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
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15.0),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(value.toString())));
                  },
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Habitos do Dia',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {

                                showDialog(context: context, builder: (BuildContext context) {

                                  return AlertDialog(                                    
                                    title: Text('Adicionar Novo Hábito', textAlign: TextAlign.center, style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold),),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const TextFieldCustomWidget(
                                          hintText: 'Título',
                                        ),
                                        const TextFieldCustomWidget(
                                          hintText: 'Descrição',
                                        ),
                                        TextFieldCustomWidget(
                                          hintText: 'Horário',
                                          readOnly: true,
                                          textEditingController: _timeTextFieldController,
                                          onTap: () async {

                                            final timePicked = await showTimePicker(context: context, initialTime: TimeOfDay.now());

                                            if (timePicked != null) {                                                
                                              _timeTextFieldController.text = "${timePicked.hour}:${timePicked.minute}";
                                            }

                                          },
                                        ),
                                      ],
                                    ),
                                    actionsAlignment: MainAxisAlignment.spaceBetween,
                                    actions: [
                                      TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancelar', style: TextStyle(color: Colors.blue.shade200, fontWeight: FontWeight.bold),)),
                                      TextButton(onPressed: (){}, child: const Text('Salvar', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),),
                                    ],
                                  );

                                });

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
                              return Container(
                                padding: const EdgeInsets.all(10.0),
                                margin: const EdgeInsets.only(bottom: 15.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
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
                                        side: BorderSide(
                                            color: Colors.blue.shade200,
                                            width: 2.0),
                                        onChanged: (value) {},
                                      ),
                                    ),
                                    const SizedBox(width: 5.0),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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

                                        showDialog(context: context, builder: (context) {
                                          return AlertDialog(
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Lottie.asset(AppAnimations.removeAnimated, animate: false),
                                                Text('Tem certeza que deseja remover esse hábito da sua lista?', style: TextStyle(fontSize: 14.0, color: Colors.grey.shade700, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                              ],
                                            ),
                                            actionsAlignment: MainAxisAlignment.spaceBetween,
                                            actions: [
                                              TextButton(onPressed: (){}, child: const Text('Deletar', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),),
                                              TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancelar', style: TextStyle(color: Colors.blue.shade200, fontWeight: FontWeight.bold),)),
                                            ],
                                          );
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
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
