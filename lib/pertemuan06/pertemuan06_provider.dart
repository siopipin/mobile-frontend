import 'package:flutter/material.dart';

class Pertemuan06Provider extends ChangeNotifier {
  var light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );

  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
  );

  bool _enableDarkMode = false;

  bool get enableDarkMode => _enableDarkMode;

  set setBrightness(nilai) {
    _enableDarkMode = nilai;
    notifyListeners();
  }

  //Provider baru
  //State
  bool _isActive = false;
  bool get isActive => _isActive;
  set setIsActive(val) {
    _isActive = val;
    notifyListeners();
  }
}
