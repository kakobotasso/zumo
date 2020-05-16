import 'package:flutter/material.dart';

loggedInAppBar() {
  return AppBar(
    title: Text('Zumo'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications_none),
        tooltip: 'Notifications',
        onPressed: () {
          debugPrint('Notifications');
        },
      ),
      IconButton(
        icon: Icon(Icons.search),
        tooltip: 'Search',
        onPressed: () {
          debugPrint('Search');
        },
      ),
    ],
  );
}
