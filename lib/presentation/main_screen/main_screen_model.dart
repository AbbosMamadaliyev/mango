import 'package:flutter/cupertino.dart';

class MainScreenModel extends ChangeNotifier {
  bool isRegister = true;

  void checkRegister() {
    isRegister = true;
    notifyListeners();
  }
}
