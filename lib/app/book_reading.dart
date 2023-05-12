import 'package:book_reading/app/routes.dart';
import 'package:book_reading/screens/home_screen.dart';
import 'package:book_reading/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class BookReadingApp extends StatelessWidget {
  const BookReadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splashScreen,
      routes: {
        AppRoutes.splashScreen: (context) => SplashScreen(),
        AppRoutes.homeScreen: (context) => HomeScreen(),

        //

        // AppRoutes.chapterScreen: (context)=> ChapterS
      },
    );
  }
}
