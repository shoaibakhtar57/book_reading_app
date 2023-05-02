import 'package:book_reading/models/page.dart';
import 'package:flutter/material.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({super.key, required this.readingArgs});

  final ReadingArgs readingArgs;

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  int currentIndex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.readingArgs.chapterName),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.readingArgs.bookPages.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (context, index) {
                final indexItem = widget.readingArgs.bookPages[index];
                return Column(
                  children: indexItem.paragraphs
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 12.0),
                            child: Text(
                              '       $e',
                              style: const TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w400),
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            // color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      pageController.animateToPage(currentIndex - 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    },
                    icon: const Icon(Icons.chevron_left)),
                Text(
                  '${currentIndex + 1} / ${widget.readingArgs.bookPages.length}',
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {
                      pageController.animateToPage(currentIndex + 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                    icon: const Icon(Icons.chevron_right))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReadingArgs {
  List<BookPage> bookPages;
  String chapterName;

  ReadingArgs({required this.bookPages, required this.chapterName});
}
