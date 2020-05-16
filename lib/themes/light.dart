import 'package:flutter/material.dart';

final Color _red = Colors.red[900];

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: _red,
    accentColor: _red,
    buttonTheme: ButtonThemeData(
      buttonColor: _red,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 20.0,
        color: _red,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 16.0,
      ),
      headline3: TextStyle(
        fontSize: 12.0,
      ),
    ),
  );
}
