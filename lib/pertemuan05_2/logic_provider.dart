import 'package:flutter/material.dart';

class LogicProvider extends ChangeNotifier {
  bool? isChecked = false;

  set setStatusCek(val) {
    isChecked = val;
    notifyListeners();
  }

  //Logika untuk pertanyaan komisaris
  String jawaban = '';

  set setJawaban(val) {
    jawaban = val;
    notifyListeners();
  }

  httpGet(val) {
    // url

    print(val);
  }

  //Ini untuk checkbox
  bool? cb1 = false;
  bool? cb2 = false;
  bool? cb3 = false;
  bool? cb4 = false;
  bool? cb5 = false;

  set setcb1(val) {
    cb1 = val;
    notifyListeners();
  }

  set setcb2(val) {
    cb2 = val;
    notifyListeners();
  }

  set setcb3(val) {
    cb3 = val;
    notifyListeners();
  }

  set setcb4(val) {
    cb4 = val;
    notifyListeners();
  }

  set setcb5(val) {
    cb5 = val;
    notifyListeners();
  }
}
