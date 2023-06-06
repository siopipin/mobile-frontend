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
            "https://www.shutterstock.com/image-photo/belgrade-serbia-december-05-2019-260nw-1586003902.jpg",
        "developer": "Samsung Electronics",
        "price": 2500000,
        "rating": 4.5
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://www.shutterstock.com/image-photo/original-model-sony-walkman-headphones-260nw-610775501.jpg",
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
            "https://www.shutterstock.com/image-photo/jakarta-indonesia-saturday-lenovo-gaming-260nw-1572146239.jpg",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": 4
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://www.shutterstock.com/image-photo/jakarta-indonesia-desember-26-2019-260nw-1598491102.jpg",
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
