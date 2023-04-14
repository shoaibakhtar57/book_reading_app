import 'dart:developer';

import 'package:book_reading/screens/reading.dart';
import 'package:flutter/material.dart';

class BookChapters extends StatelessWidget {
  const BookChapters({super.key});

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
                      child: const Text(
                        'Awesome Book Name',
                        style: TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text(
                            'More data about this book More data about this book More data about this book More data about this book',
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
                                children: const [Icon(Icons.star), Text('5.0')],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      'Awesome Book Name',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
                Image.network(
                  'https://images-platform.99static.com//WE9F54ATXej5u2LWshKJ4wlQ1-U=/192x192:1699x1699/fit-in/500x500/99designs-contests-attachments/118/118518/attachment_118518740',
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
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 12.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ReadingScreen()));
                      },
                      leading: Text('Chapter 1'),
                      trailing: Icon(Icons.chevron_right),
                    ),
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
