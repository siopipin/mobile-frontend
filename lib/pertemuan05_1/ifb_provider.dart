import 'package:flutter/material.dart';

class IFBProvider extends ChangeNotifier {
  String jawabanRadio = 'jawaban';

  set opsiA(val) {
    jawabanRadio = val;
    notifyListeners();
  }

  set opsiB(val) {
    jawabanRadio = val;
    notifyListeners();
  }

  //Logika array dan push array pada chip.
  var arrHasil = [];
  var arr = [
    'a',
    'b',
    'c',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
    'd',
  ];

  set tambahkeArray(val) {
    arrHasil.add(val);
    notifyListeners();
  }
}
