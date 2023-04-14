import 'package:book_reading/models/page.dart';

class Chapter {
  String chapterName;
  int chapterNumber;
  String chapterDetails;
  List<BookPage> pages;

  Chapter(
      {required this.chapterName,
      required this.chapterDetails,
      required this.chapterNumber,
      required this.pages});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      chapterName: json['chapterName'],
      chapterDetails: json['chapterDetails'],
      chapterNumber: json['chapterNumber'],
      pages: json['pages'].map(
        (e) => BookPage.fromJson(e),
      ),
    );
  }
}
