import 'package:flutter/material.dart';
import 'package:zumo/components/logged_in_appbar.dart';
import 'package:zumo/components/report_item.dart';
import 'package:zumo/models/report.dart';

class FilterResults extends StatelessWidget {
  final List<Report> reportsList = [
    Report('REIT report', "See what's happening to our REITs", 'and also new opportunities'),
    Report('Long time report', "Let's take a look at our new recomendation: Ezeqlabs(EZQL3)", 'and also new opportunities'),
    Report('Short time report', "See what's happening to our companies", 'and also new opportunities'),
    Report('REIT report', "See what's happening to our REITs", 'and also new opportunities'),
    Report('Long time report', "Let's take a look at our new recomendation: Ezeqlabs(EZQL3)", 'and also new opportunities'),
    Report('Short time report', "See what's happening to our companies", 'and also new opportunities'),
    Report('REIT report', "See what's happening to our REITs", 'and also new opportunities'),
    Report('Long time report', "Let's take a look at our new recomendation: Ezeqlabs(EZQL3)", 'and also new opportunities'),
    Report('Short time report', "See what's happening to our companies", 'and also new opportunities'),
    Report('REIT report', "See what's happening to our REITs", 'and also new opportunities'),
    Report('Long time report', "Let's take a look at our new recomendation: Ezeqlabs(EZQL3)", 'and also new opportunities'),
    Report('Short time report', "See what's happening to our companies", 'and also new opportunities'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loggedInAppBar('Results'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: reportsList.length,
          itemBuilder: (context, index) {
            final report = reportsList[index];

            return Container(
                child: ReportItem(
                  title: report.title,
                  text: report.text,
                  complementText: report.complementText,
                ),
            );
          },
        ),
      ),
    );
  }
}
