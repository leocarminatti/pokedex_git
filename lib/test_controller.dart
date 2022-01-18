import 'package:flutter/material.dart';

class TestController extends ChangeNotifier {
  Color color1 = Colors.black;
  Color color2 = Colors.black;
  Color color3 = Colors.black;
  Color color4 = Colors.black;

  void setColor(Color color, int what) {
    switch (what) {
      case 1:
        color1 = color;
        break;
      case 2:
        color2 = color;
        break;
      case 3:
        color3 = color;
        break;
      case 4:
        color4 = color;
        break;
    }
    notifyListeners();
  }
}
