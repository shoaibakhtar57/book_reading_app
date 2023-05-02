import 'dart:developer';

import 'package:book_reading/screens/reading.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';

class BookChapters extends StatelessWidget {
  const BookChapters({super.key, required this.bookChapterArgs});

  final BookChapterArgs bookChapterArgs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        bookChapterArgs.book.bookName,
                        style: const TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text(
                            bookChapterArgs.book.bookDetails,
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const Icon(Icons.favorite),
                            const SizedBox(height: 8.0),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black.withOpacity(0.03),
                              ),
                              child: Column(
                                children: [
                                  const Icon(Icons.star),
                                  Text(bookChapterArgs.book.bookRatings
                                      .toString())
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      bookChapterArgs.book.bookAuthor,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
                Image.network(
                  bookChapterArgs.book.bookCover,
                  height: 150.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          //TODO: SOLUTION
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.35),
                Expanded(
                  child: ListView.separated(
                    itemCount: bookChapterArgs.book.bookChapters.length,
                    padding: const EdgeInsets.all(0.0),
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 12.0);
                    },
                    itemBuilder: (context, index) {
                      final indexItem =
                          bookChapterArgs.book.bookChapters[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 12.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ReadingScreen(
                                  readingArgs: ReadingArgs(
                                      bookPages: indexItem.pages,
                                      chapterName: indexItem.chapterName),
                                ),
                              ),
                            );
                          },
                          title: Text('Chapter ${index + 1}'),
                          subtitle: Text(indexItem.chapterDetails),
                          trailing: const Icon(Icons.chevron_right),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookChapterArgs {
  Book book;

  BookChapterArgs({required this.book});
}
