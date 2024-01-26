import 'package:flutter/material.dart';

class NavigationUseCase extends ChangeNotifier {
  int bottomNavigationIdx = 0;

  void changeIdx(int idx) {
    bottomNavigationIdx = idx;
    notifyListeners();
  }
}
