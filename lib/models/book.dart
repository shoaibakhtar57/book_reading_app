import 'package:book_reading/models/chapter.dart';

class Book {
  String bookName;
  String bookAuthor;
  double bookRatings;
  String bookDetails;
  String bookCover;
  List<Chapter> bookChapters;

  Book(
      {required this.bookName,
      required this.bookAuthor,
      required this.bookRatings,
      required this.bookDetails,
      required this.bookCover,
      required this.bookChapters});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      bookName: json['bookName'],
      bookAuthor: json['bookAuthor'],
      bookRatings: json['rating'],
      bookDetails: json['bookDetails'],
      bookCover: json['bookCover'],
      bookChapters:
          List.from(json['chapters']).map((e) => Chapter.fromJson(e)).toList(),
    );
  }
}
