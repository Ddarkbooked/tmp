import 'package:flutter/material.dart';
import 'package:tmp/presentation/pages/penalty_page.dart';
import 'package:tmp/providers/app_bar_theme_provider.dart';
import 'package:tmp/providers/text_theme_provider.dart';
import 'package:tmp/providers/theme_data_provider.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Lizing App',
        theme: ThemeDataProvider(
                ctx: context,
                textThemeProvider: TextThemeProvider(),
                appBarThemeProvider: AppBarThemeProvider())
            .lightThemeData,
        darkTheme: ThemeDataProvider(
                ctx: context,
                textThemeProvider: TextThemeProvider(),
                appBarThemeProvider: AppBarThemeProvider())
            .darkThemeData,
        debugShowCheckedModeBanner: false,
        home: PenaltyPage(),
      );
}
