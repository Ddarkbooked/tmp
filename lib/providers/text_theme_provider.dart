import 'package:flutter/material.dart';

class TextThemeProvider {
  final TextTheme _lightTextTheme = TextTheme();

  final TextTheme _darkTextTheme = TextTheme();

  TextTheme get lightTextTheme => _lightTextTheme;

  TextTheme get darkTextTheme => _darkTextTheme;
}
