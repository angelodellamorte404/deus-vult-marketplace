import 'package:flutter/cupertino.dart';

class HomeSearchProvider extends ChangeNotifier {
  TextEditingController _controller = TextEditingController();
  TextEditingController get controller => this._controller;

  set controller(value) {
    this._controller.text = value;
    this._controller.selection = TextSelection.fromPosition(
        TextPosition(offset: this.controller.text.length));
    notifyListeners();
  }
}
