import 'dart:developer';

import 'package:book_reading/screens/book_chapters.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatefulWidget {
  const BookWidget(
      {super.key,
      required this.bookName,
      required this.bookAuthor,
      required this.bookCover,
      required this.bookRatings,
      required this.bookDetails,
      required this.onTap});

  final String bookCover;
  final String bookAuthor;
  final String bookName;
  final double bookRatings;
  final String bookDetails;
  final VoidCallback onTap;

  @override
  State<BookWidget> createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  bool isDetailsShowing = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.53,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 10.0,
              color: Colors.white.withOpacity(0.8),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO: For book details
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: !isDetailsShowing
                          ? const SizedBox.shrink()
                          : Text(widget.bookDetails),
                    ),
                    Text(
                      widget.bookName,
                      style: const TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.bookAuthor,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isDetailsShowing = !isDetailsShowing;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Center(
                                child: Text(
                                  isDetailsShowing ? 'Show Image' : 'Details',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: widget.onTap,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0))),
                              child: const Center(
                                  child: Text(
                                'Read',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            if (!isDetailsShowing)
              Positioned(
                top: -15,
                left: 20.0,
                child: Image.network(
                  widget.bookCover,
                  // 'https://images-platform.99static.com//WE9F54ATXej5u2LWshKJ4wlQ1-U=/192x192:1699x1699/fit-in/500x500/99designs-contests-attachments/118/118518/attachment_118518740',
                  height: 100.0,
                  width: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.favorite_border),
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
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(widget.bookRatings.toString())
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
