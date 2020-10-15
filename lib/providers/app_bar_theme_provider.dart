import 'package:flutter/material.dart';

class AppBarThemeProvider {
  final AppBarTheme _lightAppBarTheme = AppBarTheme(
      brightness: Brightness.light,
      color: Colors.white,
      elevation: 10.0,
      shadowColor: Colors.white60);

  final AppBarTheme _darkAppBarTheme = AppBarTheme(
      brightness: Brightness.dark,
      color: Colors.grey[850],
      elevation: 10.0,
      shadowColor: Colors.black);

  AppBarTheme get lightAppBarTheme => _lightAppBarTheme;

  AppBarTheme get darkAppBarTheme => _darkAppBarTheme;
}
