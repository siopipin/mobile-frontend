import 'package:flutter/material.dart';

class Pertememuan05SCProvider extends ChangeNotifier {
  bool _isCheck = false;

  bool get isCheck => _isCheck;

  set setIsCheck(val) {
    _isCheck = val;
    notifyListeners();
  }

  //ini untuk radio button
  String jawaban = '';

  set setJawaban(val) {
    jawaban = val;
    notifyListeners();
  }

  //ini untuk chip
  bool statusChip = false;

  set setStatusChip(val) {
    statusChip = val;
    notifyListeners();
  }
}
