import 'package:flutter/material.dart';
import 'package:zumo/components/filters_bar.dart';
import 'package:zumo/components/logged_in_appbar.dart';
import 'package:zumo/components/morning_call.dart';
import 'package:zumo/components/navigation_drawer.dart';
import 'package:zumo/components/report_item.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loggedInAppBar('Zumo'),
      drawer: NavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            MorningCall(
              editionNumber: '1234',
              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              complementText: 'and also: EZQL3 and RLTI3',
            ),
            FiltersBar(),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ReportItem(
                    title: 'REIT report',
                    text: "See what's happening to our REITs",
                    complementText: 'and also new opportunities',
                  ),
                  ReportItem(
                    title: 'Long time report',
                    text: "Let's take a look at our new recomendation: Ezeqlabs(EZQL3)",
                    complementText: 'and also new opportunities',
                    icon: Icons.warning,
                    iconColor: Theme.of(context).primaryColor,
                  ),
                  ReportItem(
                    title: 'Short time report',
                    text: "See what's happening to our companies",
                    complementText: 'and also new opportunities',
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
