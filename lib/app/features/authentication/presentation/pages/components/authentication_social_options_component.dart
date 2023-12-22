import 'package:flutter/material.dart';
import 'package:simple_habit/app/core/extensions/size_extension.dart';

class AuthenticationSocialOptionsComponent extends StatelessWidget {
  const AuthenticationSocialOptionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.0,
      bottom: 0.0,
      child: SizedBox(
        height: context.percentHeight(0.1),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                'Entre Também Com',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(width: 20.0),
              Icon(
                Icons.facebook_rounded,
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
