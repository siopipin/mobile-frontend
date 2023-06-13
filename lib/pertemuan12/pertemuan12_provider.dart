import 'dart:convert';
import 'package:flutter/material.dart';

class Pertemuan12Provider extends ChangeNotifier {
  initialData() async {
    setData = hp;
  }

  //Paste disini data hp dan laptop
  final hp = {
    "data": [
      {
        "model": "Samsung Galaxy2",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/I7500_with_screen_protector.jpg/220px-I7500_with_screen_protector.jpg",
        "desc":
            "Samsung Galaxy adalah seri perangkat telepon pintar berbasis Android yang dirancang, diproduksi dan dipasarkan oleh Samsung Electronics.",
        "developer": "Samsung Electronics",
        "price": 2500000,
        "rating": 4.5
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Sony_Xperia_Z.JPG/200px-Sony_Xperia_Z.JPG",
        "desc":
            "Sony Xperia Z merupakan handphone HP dengan kapasitas 2330mAh dan layar 5 yang dilengkapi dengan kamera belakang 13.1MP dengan tingkat densitas piksel sebesar 441ppi dan tampilan resolusi sebesar 1080 x 1920pixels. Dengan berat sebesar 146g, handphone HP ini memiliki prosesor Quad Core. Tanggal rilis untuk Sony Xperia Z: September 2013",
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
        "desc":
            "Conquer the eSports arena with Legion 5 Pro devices, complete with the world’s first 16 WQXGA displays on gaming laptops. Slay in style with the newly designed Legion 5 devices, featuring alluring aluminum and magnesium blended bodies",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": 4
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_Elitebook_820_G4.png/250px-HP_Elitebook_820_G4.png",
        "desc":
            "HP EliteBook is a line of business-oriented high-end notebooks and mobile workstations made by Hewlett-Packard (HP Inc.). The EliteBook series, which fits above the lower-end ProBook series, was introduced in August 2008 as a replacement of the HP Compaq high end line of notebooks.",
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

  // dataJson(BuildContext context) async {
  //   var tmp =
  //       await DefaultAssetBundle.of(context).loadString('assets/datajson.json');
  //   var res = json.decode(tmp);
  //   print(res['data'][0]['model']);

  //   print(res);
  // }

  ubahList(val) {
    if (val == 'hp') {
      setData = hp;
    } else {
      setData = laptop;
    }
  }
}
