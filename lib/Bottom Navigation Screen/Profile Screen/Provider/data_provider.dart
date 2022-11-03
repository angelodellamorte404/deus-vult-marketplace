import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  TextEditingController _nama = TextEditingController();
  TextEditingController get getNama => _nama;
  set setName(val) {
    this._nama = TextEditingController(text: val);
    this._nama.selection = TextSelection.fromPosition(
      TextPosition(offset: this._nama.text.length),
    );
    notifyListeners();
  }

  TextEditingController _email = TextEditingController();
  TextEditingController get getEmail => this._email;
  set setEmail(String email) {
    this._email = TextEditingController(text: email);
    this._email.selection = TextSelection.fromPosition(
      TextPosition(offset: this._email.text.length),
    );

    notifyListeners();
  }

  TextEditingController _nomorHP = TextEditingController();
  TextEditingController get getNomorHP => this._nomorHP;
  set setNomorHP(String value) {
    this._nomorHP = TextEditingController(text: value);
    this._nomorHP.selection = TextSelection.fromPosition(
      TextPosition(offset: this._nomorHP.text.length),
    );
    notifyListeners();
  }
}
