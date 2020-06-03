import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:zumo/components/logged_in_appbar.dart';
import 'package:zumo/helpers/pdf_helper.dart';
import 'package:zumo/models/arguments/report_arguments.dart';

class ReportDetail extends StatefulWidget {
  @override
  _ReportDetailState createState() => _ReportDetailState();
}

class _ReportDetailState extends State<ReportDetail> {
  String path;

  @override
  Widget build(BuildContext context) {
    final ReportArguments args = ModalRoute.of(context).settings.arguments;
    final pdfHelper = PDFHelper(args.title, args.pdfLink);

    return Scaffold(
      appBar: loggedInAppBar('${args.title}'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<String>(
          initialData: "",
          future: pdfHelper.loadPdf(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return LinearProgressIndicator();
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                path = snapshot.data;
                return LayoutBuilder(
                  builder: (context, constraints) => SingleChildScrollView(
                    child: Container(
                      height: constraints.maxHeight,
                      child: PdfViewer(
                        filePath: path,
                        onPdfViewerCreated: () => debugPrint('report opened'),
                      ),
                    ),
                  ),
                );
                break;
            }
            return Text("Unknown error");
          },
        ),
      ),
    );
  }
}
