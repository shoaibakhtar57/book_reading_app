import 'package:book_reading/models/book.dart';

class BookPage {
  int pageNumber;
  List<String> paragraphs;

  BookPage({required this.pageNumber, required this.paragraphs});

  factory BookPage.fromJson(Map<String, dynamic> json) {
    return BookPage(
        pageNumber: json['pageNumber'],
        paragraphs: List<String>.from(json['paragraphs']));
  }
}
