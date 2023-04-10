import 'package:flutter/material.dart';

void main() {
  //
  runApp(BookReadingApp());
}

class BookReadingApp extends StatelessWidget {
  const BookReadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Book Reading App'),
        ),
      ),
    );
  }
}
