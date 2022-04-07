import 'package:flutter/material.dart';

class Pertemuan05Provider extends ChangeNotifier {
  // status soal telah dipelajari saat?

  // Initialisasi nilai awal
  bool _diSekolah = false;
  bool _diPraktik = true;
  bool _diKursus = false;

  // Ini akan return nilai dari disekolah, dipraktik, dst. Ingat konsep OOP setter || getter
  bool get statusSekolah => _diSekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;

  // Perubahan state, ingat konsep Listen pada StateManajemen
  set setSekolah(val) {
    _diSekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }
}
