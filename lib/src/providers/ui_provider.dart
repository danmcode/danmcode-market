import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  //Manage the Botton Navigator Bar
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int currentIndex) {
    _currentIndex = currentIndex;
    notifyListeners();
  }
}
