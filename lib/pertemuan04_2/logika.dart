//Perhitungan
//initialisasi
//request data ke server

import 'package:flutter/material.dart';

class LogikaProvider extends ChangeNotifier {
  String nama = 'Steven';

  int i = 100;

  int hasil = 10;

  hitung() {
    hasil = i + 100;
  }
}
