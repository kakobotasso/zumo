import 'package:flutter/material.dart';
import 'package:zumo/components/report_item.dart';

class MorningCall extends StatelessWidget {
  final String editionNumber;
  final String text;
  final String complementText;

  MorningCall({
    @required this.editionNumber,
    @required this.text,
    @required this.complementText,
  });

  @override
  Widget build(BuildContext context) {
    return ReportItem(
      title: 'Morning Call Edition #$editionNumber',
      text: text,
      complementText: complementText,
      titleStyle: Theme.of(context).textTheme.headline1,
      textStyle: Theme.of(context).textTheme.headline2,
      complementStyle: Theme.of(context).textTheme.headline3,
      icon: Icons.free_breakfast,
      iconColor: Theme.of(context).primaryColor,
      iconSize: 48.0,
    );
  }
}
