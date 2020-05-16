import 'package:flutter/material.dart';
import 'package:zumo/models/routes.dart';
import 'package:zumo/themes/light.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightTheme(),
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Zumo Products',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _MainTiles(
              icon: Icons.description,
              title: 'Reports',
              itens: <Widget>[
                _ItemTile('Short term'),
                _ItemTile('Long term'),
                _ItemTile('REITs'),
              ],
            ),
            _MainTiles(
              icon: Icons.favorite,
              title: 'Recomendations',
              itens: <Widget>[
                _ItemTile('Long term'),
              ],
            ),
            _MainTiles(
              icon: Icons.person,
              title: 'Profile',
              itens: <Widget>[
                _ItemTile('Account'),
                _ItemTile('Preferences'),
                _ItemTile('Bill'),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.login, (Route<dynamic> route) => false);
              },
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text('Logout'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MainTiles extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<Widget> itens;

  const _MainTiles(
      {@required this.icon, @required this.title, @required this.itens});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(title),
      children: itens,
    );
  }
}

class _ItemTile extends StatelessWidget {
  final String _title;

  _ItemTile(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: InkWell(
        onTap: () => debugPrint('$_title clicked'),
        child: ListTile(
          title: Text(_title),
        ),
      ),
    );
  }
}
