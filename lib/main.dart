import 'package:flutter/material.dart';
import 'package:zumo/routes.dart';
import 'package:zumo/themes/light.dart';

void main() => runApp(ZumoApp());

class ZumoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      routes: routes,
    );
  }
}
