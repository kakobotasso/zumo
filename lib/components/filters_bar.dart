import 'package:flutter/material.dart';
import 'package:zumo/components/filter_checkbox.dart';
import 'package:zumo/components/filter_tag.dart';
import 'package:zumo/models/routes.dart';

class FiltersBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              FilterTag(
                text: 'All reports',
              ),
              FilterTag(
                text: 'All content',
              ),
              FilterTag(
                text: 'Recent',
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => _showFiltersDialog(context),
          child: Chip(
            label: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }

  Future<void> _showFiltersDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose your filter'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                FilterCheckbox(
                  text: 'All reports',
                  value: true,
                ),
                FilterCheckbox(
                  text: 'All content',
                  value: true,
                ),
                FilterCheckbox(
                  text: 'Recents',
                  value: true,
                ),
                FilterCheckbox(
                  text: 'Long term',
                  value: false,
                ),
                FilterCheckbox(
                  text: 'Short term',
                  value: false,
                ),
                FilterCheckbox(
                  text: 'REITs',
                  value: false,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Filter',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, Routes.filterResults);
              },
            ),
          ],
        );
      },
    );
  }
}
