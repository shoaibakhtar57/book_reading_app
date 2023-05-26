import 'dart:convert';
import 'dart:developer';

import 'package:book_reading/app/routes.dart';
import 'package:book_reading/models/book.dart';
import 'package:book_reading/screens/book_chapters.dart';
import 'package:book_reading/widgets/book_widget.dart';
import 'package:book_reading/widgets/top_rated_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Book> books = List.empty(growable: true);

  //Top Rated Book
  Book? topRatedBook;

  Future<void> getBooks() async {
    final booksMap = await rootBundle.loadString('assets/data/book.json');
    final data = Map<String, dynamic>.from(jsonDecode(booksMap));
    books = (data['books'] as Map<String, dynamic>)
        .entries
        .map((e) => Book.fromJson(e.value))
        .toList();
    getTopRatedBook();
    log('BOOKS LENGHT:: ${books.length}');
    setState(() {});
  }

  void getTopRatedBook() async {
    final topBooks = [...books];
    topBooks.sort((a, b) => b.bookRatings.compareTo(a.bookRatings));
    topRatedBook = topBooks.first;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 235),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const Align(
            alignment: Alignment(1.2, -1.1),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 234, 149, 178),
              radius: 90.0,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text(
                        'What are you reading today?',
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.314,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: books.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final indexItem = books[index];
                          return BookWidget(
                            bookName: indexItem.bookName,
                            bookAuthor: indexItem.bookAuthor,
                            bookCover: indexItem.bookCover,
                            bookRatings: indexItem.bookRatings,
                            bookDetails: indexItem.bookDetails,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.chapterScreen,
                                  arguments: BookChapterArgs(book: indexItem));
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (_) => BookChapters(
                              //       bookChapterArgs:
                              //           BookChapterArgs(book: indexItem),
                              //     ),
                              //   ),
                              // );
                            },
                          );
                        },
                      ),
                    ),
                    const Text(
                      'Best of the day',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w600),
                    ),
                    topRatedBook != null
                        ? TopRatedBook(
                            bookName: topRatedBook!.bookName,
                            bookCover: topRatedBook!.bookCover,
                            bookAuthor: topRatedBook!.bookAuthor,
                            bookDetails: topRatedBook!.bookDetails,
                            bookRatings: topRatedBook!.bookRatings)
                        : const Text('No Top Rated Book Found'),
                    const Text(
                      'Continue Reading.. ',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12.0),
                    ListTile(
                      tileColor: Colors.grey.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      title: const Text(
                        'Book Raading Name',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Some subtitle about book reading',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      trailing: Image.network(
                        'https://images-platform.99static.com//WE9F54ATXej5u2LWshKJ4wlQ1-U=/192x192:1699x1699/fit-in/500x500/99designs-contests-attachments/118/118518/attachment_118518740',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
