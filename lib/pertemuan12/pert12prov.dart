import 'dart:convert';

import 'package:flutter/material.dart';

class Pert12Prov extends ChangeNotifier {
  // prov.databarang['data'][0]['merek']
  var databarang = {
    "data": [
      {'jenis': 'Sepatu', 'warna': 'biru', 'ukuran': 40, 'merek': 'nike'},
      {'jenis': 'sandal', 'warna': 'hitam', 'ukuran': 44, 'merek': 'swallow'},
    ]
  };

  dynamic data;
  dynamic get databarang2 => data;

  setData(val) {
    var tmp = json.encode(databarang);
    // tmp ini akan print databarang sebagai sebuah string

    var data = json.decode(tmp);
  }
}
