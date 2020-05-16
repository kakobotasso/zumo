import 'package:flutter/material.dart';

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
        onTap: () => debugPrint('item click'),
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
