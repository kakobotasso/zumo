import 'package:flutter/widgets.dart';
import 'package:zumo/models/routes.dart';
import 'package:zumo/screens/dashboard.dart';
import 'package:zumo/screens/login.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Routes.login: (BuildContext context) => Login(),
  Routes.dashboard: (BuildContext context) => Dashboard(),
};