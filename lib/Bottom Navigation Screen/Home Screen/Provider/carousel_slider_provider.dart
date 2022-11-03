import 'package:flutter/cupertino.dart';

class CarouselSliderProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  set setIndex(val) {
    _index = val;
    notifyListeners();
  }
}
