import 'dart:convert';

import 'package:flutter/material.dart';

class PertemuanSCCProv extends ChangeNotifier {
  initialDataYaWeee() {
    setData = laptop;
  }

  final hp = {
    "data": [
      {
        "model": "Samsung Galaxy",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/I7500_with_screen_protector.jpg/220px-I7500_with_screen_protector.jpg",
        "developer": "Samsung Electronics",
        "price": 2500000,
        "rating": 4.5
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Sony_Xperia_Z.JPG/200px-Sony_Xperia_Z.JPG",
        "developer": "Sony Mobile",
        "price": 1500000,
        "rating": 4.1
      },
    ]
  };

  //Cara askes banyak data di arr?
  // laptop['data'].length

  // akses model di index 0
  // laptop['data'][0]['model']

  // akses developer di index 1;
  // laptop['data'][1]['developer']
  final laptop = {
    "data": [
      {
        "model": "Lenovo Legion",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Lenovo_Legion_Y520_%281%29.jpg/220px-Lenovo_Legion_Y520_%281%29.jpg",
        "developer":
            "Untuk varian PLUSPROTECTION akan kita tambahkan Paket Perlindungan Layar dan Body belakang anti gores agar layar dan body belakang laptop lebih awet, aman dari goresan dan sudah termasuk Cleankit (langsung dipasang oleh teknisi kami)",
        "price": 12500000,
        "rating": 4
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_Elitebook_820_G4.png/250px-HP_Elitebook_820_G4.png",
        "developer":
            "Untuk berat sudah termasuk packing bubble rangkap dobel dus (belum termasuk packing kayu)",
        "price": 2500000,
        "rating": 4.8
      },
    ]
  };

  dynamic _data;
  dynamic get hpataulaptop => _data;
  set setData(apadataini) {
    //butuh proses untuk konversi data raw menjadi data objek / JSON yang bisa dibaca aplikasi mobile.

    //encode
    var tmp = json.encode(apadataini);
    //decode
    _data = json.decode(tmp);
    notifyListeners();
  }

  gantiData(val) {
    if (val == 'laptop') {
      setData = laptop;
    } else {
      setData = hp;
    }
  }
}
