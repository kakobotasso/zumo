import 'package:flutter/material.dart';
import 'package:zumo/models/routes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zumo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.person_outline,
                  color: Colors.red[900],
                ),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RaisedButton(
                  child: Text('Enter'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.dashboard);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
