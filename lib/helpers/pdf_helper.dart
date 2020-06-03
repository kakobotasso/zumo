import 'dart:io';

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class PDFHelper {
  String path;
  final String title;
  final String pdfUrl;

  PDFHelper(this.title, this.pdfUrl);

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$title.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<Uint8List> fetchPost() async {
    final response = await http
        .get(pdfUrl)
        .timeout(Duration(seconds: 10));

    final responseJson = response.bodyBytes;

    return responseJson;
  }

  Future<String> loadPdf() async {
    final postContent = await fetchPost();
    writeCounter(postContent);
    path = (await _localFile).path;

    return path;
  }
}