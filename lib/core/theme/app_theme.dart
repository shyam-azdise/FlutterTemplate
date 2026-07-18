import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: const Color.fromARGB(255, 11, 146, 144),
    scaffoldBackgroundColor: const Color.fromARGB(255, 240, 238, 238),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: const Color.fromARGB(255, 1, 18, 33),
    scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
  );
}
