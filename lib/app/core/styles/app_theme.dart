import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor color = MaterialColor(
    _customBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_customBluePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
  static const int _customBluePrimaryValue = 0xFF01F2F1;

  static const Color background = Color(0xFFFFFFFF);

  // static ButtonStyle elevatedButtonStyle({
  //   Color color = Colors.white,
  //   double padding = 24.0,
  // }) {
  //   return ElevatedButton.styleFrom(
  //     foregroundColor: color,
  //     elevation: 0,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(10.0),
  //       ),
  //     ),
  //   );
  // }

  // static ButtonStyle outlinedButtonStyle() {
  //   return OutlinedButton.styleFrom(
  //     foregroundColor: color.shade900,
  //     side: BorderSide(color: color.shade900, width: 2.0),
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(10.0),
  //       ),
  //     ),
  //   );
  // }

  static InputDecorationTheme inputDecorationStyle() {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      filled: true,
      fillColor: Colors.white,
      hintStyle:
          TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w700),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400, width: 2.0),
          borderRadius: BorderRadius.circular(50.0)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400, width: 2.0),
          borderRadius: BorderRadius.circular(50.0)),
    );
  }

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    fontFamily: 'Raleway-Regular',
    inputDecorationTheme: inputDecorationStyle(),
  );
}
