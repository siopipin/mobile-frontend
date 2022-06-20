import 'package:flutter/material.dart';

class Pertemuan13IFCProvider extends ChangeNotifier {
//Psuedocode untuk rebus mie.

// Bahan: Parameter.
// 1. Air
// 2. Mie
// 3. Bumbu

// Aktivitas?
// 1. Rebus Air
// Wajan kosong
// => isi air pada wajan (fungsi) butuh 3 detik.
// Wajan berisi air.
// ==> mulaimasakair.
// Tunggu Air mendidi.

//2. Campur semua bahan dan tunggu hingga selesai.
// => memasak
// Tunggu mie masak.

//3 Menyajikan mie pada piring.
// Piring kosong.
// Piring berisi mie.

//piring dan wajan mula-mula kosong.
  bool _piring = false;
  bool get piring => _piring;
  set setPiring(val) {
    _piring = val;
    notifyListeners();
  }

  bool _wajan = false;
  bool get wajan => _wajan;
  set setWajan(val) {
    _wajan = val;
    notifyListeners();
  }

  bool _cekAirMasak = false;
  bool get cekAirMasak => _cekAirMasak;
  set setCekAirMasak(val) {
    _cekAirMasak = val;
    notifyListeners();
  }

  bool _cekMieMasak = false;
  bool get cekMieMasak => _cekMieMasak;
  set setCekMieMasak(val) {
    _cekMieMasak = val;
    notifyListeners();
  }

  int masakAir = 4;
  int masakMie = 3;

  Future<bool> memasakAir() async {
    setCekAirMasak = true;
    bool res =
        await Future.delayed(Duration(seconds: masakAir), () {}).then((value) {
      print('telah masak air');
      setCekAirMasak = false;
      return true;
    });

    return res;
  }

  Future<bool> memasakMie() async {
    setCekMieMasak = true;
    bool res =
        await Future.delayed(Duration(seconds: masakMie), () {}).then((value) {
      print('telah masak mie');
      setCekMieMasak = false;
      return true;
    });
    return res;
  }
}
