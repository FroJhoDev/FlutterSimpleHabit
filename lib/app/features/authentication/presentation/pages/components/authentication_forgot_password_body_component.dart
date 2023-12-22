import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/assets/app_animations.dart';
import '../../../../../core/shared/widgets/text_field_custom_widget.dart';

class AuthenticationForgotPasswordBodyComponent extends StatelessWidget {

  const AuthenticationForgotPasswordBodyComponent({ super.key });

   @override
   Widget build(BuildContext context) {
       return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(AppAnimations.passwordAnimated, width: context.percentWidth(0.60)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Esqueceu sua senha? ',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Recupere-a',
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
            'Recuperar Senha',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
        ),
        const TextFieldCustomWidget(
          hintText: 'E-mail',
          suffixIcon: Icons.email_outlined,
        ),
        FilledButton(onPressed: () {}, child: const Text('Enviar'))
      ],
    );
  }
}