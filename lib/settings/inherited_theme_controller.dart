import 'dart:developer';

import 'package:flutter/material.dart';

class InheritedThemeController with ChangeNotifier {
  Color theme = Colors.black;

  void ligthTheme() {
    theme = const Color.fromARGB(255, 141, 141, 130);
    log('theme updated');
    notifyListeners();
  }

    void dartTheme() {
    theme =  Colors.black;
    log('theme updated');
    notifyListeners();
  }
}
