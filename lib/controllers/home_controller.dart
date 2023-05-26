import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeController extends ChangeNotifier {
  int count = 0;

  void updateCount() {
    log('BEFORE INCREMENT:: $count');
    count++;
    log('AFTER INCREMENT:: $count');
    notifyListeners();
  }
}
