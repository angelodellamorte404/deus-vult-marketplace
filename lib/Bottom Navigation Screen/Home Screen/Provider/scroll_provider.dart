import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  scrollTop() async {
    await scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    notifyListeners();
  }
}
