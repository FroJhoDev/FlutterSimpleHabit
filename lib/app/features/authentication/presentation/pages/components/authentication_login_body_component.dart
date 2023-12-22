import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/assets/app_animations.dart';
import '../../../../../core/shared/widgets/text_field_custom_widget.dart';

class AuthenticationLoginBodyComponent extends StatelessWidget {
  const AuthenticationLoginBodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Lottie.asset(AppAnimations.logoAnimated,
                  repeat: false, width: context.percentWidth(0.60)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Bem-Vindo ao ',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'SimpleHabit',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold)),
              ]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            'Entrar',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        const TextFieldCustomWidget(
          hintText: 'E-mail',
          suffixIcon: Icons.email_outlined,
        ),
        const TextFieldCustomWidget(
          hintText: 'Senha',
          suffixIcon: Icons.lock_open_outlined,
          obscureText: true,
        ),
        Row(
          children: [
            Checkbox(
                value: false,
                side: BorderSide(color: Colors.grey.shade400, width: 2.0),
                shape: const CircleBorder(),
                onChanged: (value) {}),
            Text(
              'Salvar Senha',
              style: TextStyle(
                  color: Colors.grey.shade500, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        FilledButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Entrar Agora'),
        ),
      ],
    );
  }
}
