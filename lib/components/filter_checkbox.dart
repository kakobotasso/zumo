import 'package:flutter/material.dart';

class FilterCheckbox extends StatelessWidget {
  final String text;
  final bool value;

  FilterCheckbox({this.text, this.value,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: value,
          onChanged: (bool value) {
            debugPrint(text);
          },
        ),
        Text(text),
      ],
    );
  }
}
