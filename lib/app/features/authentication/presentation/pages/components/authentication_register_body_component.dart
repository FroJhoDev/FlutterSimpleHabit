import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/assets/app_animations.dart';

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
            Lottie.asset(AppAnimations.registerAnimated, width: context.percentWidth(0.60)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Crie sua conta ',
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
            'Cadastre-se',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 3.0,
                offset: const Offset(0.0, 4.0)),
          ], borderRadius: BorderRadius.circular(50.0)),
          child: TextField(
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.w700),
            decoration: InputDecoration(
                hintText: 'Nome',
                suffixIcon:
                    Icon(Icons.person_2_outlined, color: Colors.grey.shade400)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 3.0,
                offset: const Offset(0.0, 4.0)),
          ], borderRadius: BorderRadius.circular(50.0)),
          child: TextField(
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.w700),
            decoration: InputDecoration(
                hintText: 'E-mail',
                suffixIcon:
                    Icon(Icons.email_outlined, color: Colors.grey.shade400)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 3.0,
                offset: const Offset(0.0, 4.0)),
          ], borderRadius: BorderRadius.circular(50.0)),
          child: TextField(
            obscureText: false,
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.w700),
            decoration: InputDecoration(
              hintText: 'Senha',
              suffixIcon:
                  Icon(Icons.lock_open_outlined, color: Colors.grey.shade400),
            ),
          ),
        ),
        FilledButton(onPressed: () {}, child: const Text('Cadastrar'))
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Column(
        //       children: [
        //         Row(
        //           children: [
        //             Checkbox(
        //                 value: false,
        //                 side:
        //                     BorderSide(color: Colors.grey.shade400, width: 2.0),
        //                 shape: const CircleBorder(),
        //                 onChanged: (value) {}),
        //             Text(
        //               'Salvar Senha',
        //               style: TextStyle(
        //                   color: Colors.grey.shade500,
        //                   fontWeight: FontWeight.w700),
        //             ),
        //           ],
        //         ),
        //         const SizedBox(height: 15.0),
        //         FilledButton(
        //             onPressed: () {}, child: const Text('Entrar Agora'))
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         RotatedBox(
        //           quarterTurns: 1,
        //           child: Text(
        //             'Cadastro',
        //             textAlign: TextAlign.left,
        //             style:
        //                 TextStyle(fontSize: 42.0, color: Colors.blue.shade100),
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),
      ],
    );
  }
}
