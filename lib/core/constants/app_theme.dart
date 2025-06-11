import 'package:flutter/material.dart';

class AppThemes {
  static const primaryColor = Color(0xFF222DFF);
  static const darkColor = Color(0xFF141466);
  static const backgroundColor = Color(0xFFFAFAFA);
  static const lightColor = Color(0xFFFFFFFF);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: 'Cairo',
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
    appBarTheme: const AppBarTheme(
      backgroundColor: lightColor,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkColor,
    fontFamily: 'Cairo',
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
    appBarTheme: const AppBarTheme(
      backgroundColor: darkColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
