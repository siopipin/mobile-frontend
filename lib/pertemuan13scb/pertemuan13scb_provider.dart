import 'package:flutter/material.dart';

class Pertemuan13SCBProvider extends ChangeNotifier {
  //Proses memasak ayam goreng.
  var bahan1 = "Ayam";
  var bahan2 = "Minyak";

  double lamaMenggoreng = 5;
  double get infolamamenggoreng => lamaMenggoreng;
  set setInfoLamaMenggoreng(val) {
    lamaMenggoreng = val;
    notifyListeners();
  }

  bool ayamPadaPiring = false;
  bool get infoAyamPadaPiring => ayamPadaPiring;
  set setAyamPadaPiring(val) {
    ayamPadaPiring = val;
    notifyListeners();
  }

  bool apakahsedangmemasak = false;
  bool get infokanapakahsedangmemasak => apakahsedangmemasak;
  set setInfoApakahSedangMemasak(val) {
    apakahsedangmemasak = val;
    notifyListeners();
  }

  memasakAyamGoreng() {
    //Sediakan piring.
    setAyamPadaPiring = false;
    //infokan bahwa sedang memasak.
    setInfoApakahSedangMemasak = true;

    //Ibu-ibu akan melakukan kegiatan memasak.
    Future.delayed(Duration(seconds: lamaMenggoreng.round()), () {
      setAyamPadaPiring = true;
      setInfoApakahSedangMemasak = false;
      print('selesai memasak');
    });
  }

  Future<bool> testAsynFunc() async {
    var res =
        await Future.delayed(Duration(seconds: 3), () {}).then((value) => true);
    return res;
  }
}
