import 'package:flutter/material.dart';

class Pertemuan05PrektekProv extends ChangeNotifier {
  bool _sekolah = false;
  bool get statusSekolah => _sekolah;
  set setStatusSekolah(val) {
    print(val);
    _sekolah = val;
  }
}
