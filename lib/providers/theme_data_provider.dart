import 'package:flutter/material.dart';
import 'package:tmp/providers/app_bar_theme_provider.dart';
import 'package:tmp/providers/text_theme_provider.dart';

class ThemeDataProvider {
  BuildContext _context;
  TextThemeProvider _textThemeProvider;
  AppBarThemeProvider _appBarThemeProvider;

  ThemeDataProvider(
      {@required BuildContext ctx,
      @required TextThemeProvider textThemeProvider,
      @required AppBarThemeProvider appBarThemeProvider}) {
    this._context = ctx;
    this._textThemeProvider = textThemeProvider;
    this._appBarThemeProvider = appBarThemeProvider;
  }

  ThemeData _lightThemeData(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        appBarTheme: _appBarThemeProvider.lightAppBarTheme,
        accentColorBrightness: Brightness.light,
        primaryColorBrightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: _textThemeProvider.lightTextTheme,
      );

  ThemeData _darkThemeData(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        appBarTheme: _appBarThemeProvider.darkAppBarTheme,
        accentColorBrightness: Brightness.dark,
        primaryColorBrightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[850],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: _textThemeProvider.darkTextTheme,
      );

  ThemeData get lightThemeData => _lightThemeData(_context);

  ThemeData get darkThemeData => _darkThemeData(_context);
}
