import 'package:flutter/material.dart';

class Pert04Provider extends ChangeNotifier {
  inisialisasi() {}

  String? nama = "Budi";
  String get dataNama => nama!;
  set setNama(val) {
    nama = val;
    notifyListeners();
  }

  // logic untuk future
  bool isDone = false;
  bool get dataDone => isDone;
  set getData(val) {
    isDone = val;
    notifyListeners();
  }

  futureGetData() {
    Future.delayed(Duration(seconds: 3), () {
      getData = false;
    });
  }
}
