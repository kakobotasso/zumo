import 'package:flutter/material.dart';

loggedInAppBar(String title) {
  return AppBar(
    title: Text(title),
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
