class Report {
  final String title;
  final String text;
  final String complementText;
  final String pdfUrl;

  Report(this.title, this.text, this.complementText,
      {this.pdfUrl =
          'https://firebasestorage.googleapis.com/v0/b/kako-botasso.appspot.com/o/zumo%2Fsample.pdf?alt=media&token=a2d82956-a3fa-47a9-ba34-f5ce3052b230'});
}
