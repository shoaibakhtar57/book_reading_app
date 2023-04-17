import 'package:flutter/material.dart';

class TopRatedBook extends StatelessWidget {
  const TopRatedBook(
      {super.key,
      required this.bookName,
      required this.bookCover,
      required this.bookAuthor,
      required this.bookDetails,
      required this.bookRatings});

  final String bookName;
  final String bookAuthor;
  final String bookDetails;
  final double bookRatings;
  final String bookCover;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('New york times best seller book'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookName,
                    style: const TextStyle(
                        fontSize: 21.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  bookAuthor,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.4)),
                ),
                Row(
                  children: [
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
                          Text(bookRatings.toString())
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(bookDetails),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -25,
            right: 20.0,
            child: Image.network(
              bookCover,
              // 'https://images-platform.99static.com//WE9F54ATXej5u2LWshKJ4wlQ1-U=/192x192:1699x1699/fit-in/500x500/99designs-contests-attachments/118/118518/attachment_118518740',
              height: 180.0,
              width: 120.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
