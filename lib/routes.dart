import 'package:flutter/widgets.dart';
import 'package:zumo/models/routes.dart';
import 'package:zumo/screens/dashboard.dart';
import 'package:zumo/screens/filter_results.dart';
import 'package:zumo/screens/login.dart';
import 'package:zumo/screens/report_detail.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Routes.login: (BuildContext context) => Login(),
  Routes.dashboard: (BuildContext context) => Dashboard(),
  Routes.filterResults: (BuildContext context) => FilterResults(),
  Routes.reportDetail: (BuildContext context) => ReportDetail(),
};