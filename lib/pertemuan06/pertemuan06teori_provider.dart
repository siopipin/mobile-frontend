import 'package:flutter/material.dart';

class Pertemuan06TeoriProvider extends ChangeNotifier {
  bool _status = false;
  bool _statusBt = false;

  bool get dataStatus => _status;

  statusBt() {
    return _statusBt;
  }

  //mirip dengan setState
  set setStatus(val) {
    _status = val;
    notifyListeners();
  }

  //mirip dengan state
  setStatusBT(val1, val) {
    print('val1: $val1');
    print('val2: $val');

    _statusBt = val;
    notifyListeners();
  }

  //Logic untuk set mode pesawat
  bool _statusPesawat = false;
  bool get dataStatusPesawat => _statusPesawat;
  set setDataStatusPesawat(x) {
    _statusPesawat = x;
    notifyListeners();
  }

  //logic untuk dropdownButton
  List<String> mahasiswa = [
    'Pilih mhs',
    'Adji perdana kusuma',
    'Adreas Tulus',
    'Cherchen',
    'Dean Joshua',
    'Erika Rhulina Lumban Gaol',
    'Sikenni Jaya',
    'Indra Gunawan Gulo',
    "a",
    "b",
    "c",
    "d",
    "e",
  ];

  String _item = "Pilih mhs";
  String get dataItem => _item;
  set setDataItem(val) {
    print(val);
    _item = val;
    notifyListeners();
  }
}
