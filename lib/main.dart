import 'package:book_reading/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/book_reading.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => HomeController()),
  ], child: MaterialApp(home: TestApp())));
}
