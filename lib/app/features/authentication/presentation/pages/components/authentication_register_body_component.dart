import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/assets/app_animations.dart';
import '../../../../../core/shared/widgets/text_field_custom_widget.dart';
import '../../../../../core/styles/app_typography.dart';

class AuthenticationRegisterBodyComponent extends StatelessWidget {
  const AuthenticationRegisterBodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(AppAnimations.registerAnimated,
                width: context.percentWidth(0.60)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Crie sua conta ',
                    style: AppTypography.description()),
                TextSpan(
                    text: 'SimpleHabit',
                    style: AppTypography.description()
                        .copyWith(color: Colors.blue.shade900)),
              ]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            'Cadastre-se',
            style: AppTypography.title(),
          ),
        ),
        const TextFieldCustomWidget(
          hintText: 'Nome',
          suffixIcon: Icons.person_2_outlined,
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
        FilledButton(onPressed: () {}, child: const Text('Cadastrar')),
      ],
    );
  }
}
