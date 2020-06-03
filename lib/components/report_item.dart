import 'package:flutter/material.dart';
import 'package:zumo/models/arguments/report_arguments.dart';
import 'package:zumo/models/routes.dart';

class ReportItem extends StatelessWidget {
  final String title;
  final String text;
  final String complementText;
  final IconData icon;
  final TextStyle titleStyle;
  final TextStyle textStyle;
  final TextStyle complementStyle;
  final Color iconColor;
  final double iconSize;

  ReportItem({
    @required this.title,
    @required this.text,
    @required this.complementText,
    this.icon,
    this.titleStyle,
    this.textStyle,
    this.complementStyle,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.reportDetail,
              arguments: ReportArguments(
                title: title,
                pdfLink:
                    'https://firebasestorage.googleapis.com/v0/b/zumo-8ef0f.appspot.com/o/sample.pdf?alt=media&token=942d1873-465b-40dd-86ec-164026eb9190',
              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _showIcon(context),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: titleStyle != null
                            ? titleStyle
                            : TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                      ),
                      Text(
                        text,
                        style: textStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          complementText,
                          style: complementStyle != null
                              ? complementStyle
                              : Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showIcon(BuildContext context) {
    if (icon != null) {
      return Icon(
        icon,
        color: iconColor,
        size: iconSize != null ? iconSize : 32.0,
      );
    }

    return Container();
  }
}
