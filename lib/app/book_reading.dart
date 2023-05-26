import 'dart:developer';

import 'package:book_reading/app/routes.dart';
import 'package:book_reading/controllers/home_controller.dart';
import 'package:book_reading/screens/book_chapters.dart';
import 'package:book_reading/screens/home_screen.dart';
import 'package:book_reading/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookReadingApp extends StatelessWidget {
  const BookReadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splashScreen,
      routes: {
        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.chapterScreen: (context) {
          final args =
              ModalRoute.of(context)?.settings.arguments as BookChapterArgs?;
          if (args != null) {
            return BookChapters(bookChapterArgs: args);
          } else {
            throw 'Arguments cant\'t be null';
          }
        },

        //

        // AppRoutes.chapterScreen: (context)=> ChapterS
      },
    );
  }
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SecondScreen(),
                ),
              );
            },
            child: Text('Navigate to screen'),
          ),
          Consumer<HomeController>(
            builder: (context, notifier, child) => Text(
              'Count: ${homeController.count}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Text(
          // 'Count: $count',
          '',
          style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.updateCount,
        child: Icon(Icons.add),
      ),
    );
  }
}
