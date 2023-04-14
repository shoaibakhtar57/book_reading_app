import 'package:book_reading/models/chapter.dart';
import 'package:book_reading/models/page.dart';
import 'package:book_reading/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'models/book.dart';

void main() {
  //

  Book book = Book(
      bookName: 'bookName',
      bookAuthor: 'bookAuthor',
      bookRatings: 5.0,
      bookDetails: 'bookDetails',
      bookCover: 'bookCover',
      bookChapters: [
        Chapter(
            chapterName: 'chapterName',
            chapterDetails: 'chapterDetails',
            chapterNumber: 1,
            pages: [
              BookPage(pageNumber: 1, paragraphs: [
                'Some paragrph',
              ])
            ])
      ]);

  runApp(BookReadingApp());
}

class BookReadingApp extends StatelessWidget {
  const BookReadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
