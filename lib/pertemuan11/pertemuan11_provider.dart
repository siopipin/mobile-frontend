import 'dart:convert';
import 'package:flutter/material.dart';

class Pertemuan11Provider extends ChangeNotifier {
  initialData() async {
    setData = hp;
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

  final laptop = {
    "data": [
      {
        "model": "Lenovo Legion",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Lenovo_Legion_Y520_%281%29.jpg/220px-Lenovo_Legion_Y520_%281%29.jpg",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": 4
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_Elitebook_820_G4.png/250px-HP_Elitebook_820_G4.png",
        "developer": "HP",
        "price": 2500000,
        "rating": 4.8
      },
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    print('val');
    if (val == 'hp') {
      setData = hp;
    } else {
      setData = laptop;
    }
  }
}
