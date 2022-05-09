import 'package:flutter/cupertino.dart';

class BottomNavBarModel extends ChangeNotifier {
  int bottomNavIndex = 0;

  void onTap(int index) {
    bottomNavIndex = index;
    notifyListeners();
  }

  void onPressed() {
    bottomNavIndex = 4;
    notifyListeners();
  }
}
