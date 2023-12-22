import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? textEditingController;
  final IconData? suffixIcon;
  final bool? obscureText;
  final bool? readOnly;
  final Function()? onTap;

  const TextFieldCustomWidget({
    super.key,
    required this.hintText,
    this.textEditingController,
    this.suffixIcon, 
    this.obscureText,
    this.readOnly,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 3.0,
          offset: const Offset(0.0, 4.0),
        ),
      ], borderRadius: BorderRadius.circular(50.0)),
      child: TextField(
        controller: textEditingController,
        obscureText: obscureText ?? false,
        style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon != null ? Icon(
            suffixIcon,
            color: Colors.grey.shade400,
          ) : null,
        ),
        readOnly: readOnly ?? false,
        onTap: onTap,
      ),
    );
  }
}
