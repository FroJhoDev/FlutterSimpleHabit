import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

import '../../../../../core/styles/app_typography.dart';

class AuthenticationSocialOptionsComponent extends StatelessWidget {
  const AuthenticationSocialOptionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.0,
      bottom: 0.0,
      child: SizedBox(
        height: context.percentHeight(0.1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                'Entre Também Com',
                style: AppTypography.textButton(),
              ),
              const SizedBox(width: 20.0),
              const Icon(
                Icons.facebook_rounded,
                size: 32.0,
                color: Colors.white,
              ),
              const SizedBox(width: 10.0),
              Icon(
                MdiIcons.google,
                size: 32.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
