import 'package:flutter/material.dart';
import 'package:zumo/screens/login.dart';

void main() => runApp(ZumoApp());

class ZumoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[900],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red[900],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Login(),
    );
  }
}
