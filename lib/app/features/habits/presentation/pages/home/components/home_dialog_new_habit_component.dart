import 'package:flutter/material.dart';

import '../../../../../../core/shared/widgets/text_field_custom_widget.dart';
import '../../../../../../core/styles/app_typography.dart';

class HomeDialogNewHabitComponent extends StatelessWidget {
  HomeDialogNewHabitComponent({super.key});

  final TextEditingController _timeTextFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Adicionar Novo Hábito',
        textAlign: TextAlign.center,
        style:
            TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextFieldCustomWidget(hintText: 'Título'),
          const TextFieldCustomWidget(hintText: 'Descrição'),
          TextFieldCustomWidget(
            hintText: 'Horário',
            readOnly: true,
            textEditingController: _timeTextFieldController,
            onTap: () async {
              final timePicked = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());

              if (timePicked != null) {
                _timeTextFieldController.text =
                    "${timePicked.hour}:${timePicked.minute}";
              }
            },
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancelar',
              style: AppTypography.textButton()
                  .copyWith(color: Colors.blue.shade200),
            )),
        TextButton(
          onPressed: () {},
          child: Text(
            'Salvar',
            style: AppTypography.textButton().copyWith(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
