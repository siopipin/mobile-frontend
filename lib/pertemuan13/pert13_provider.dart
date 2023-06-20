import 'package:flutter/material.dart';

enum TombolInitial { initial, loading, loaded, nulled, error }

class Pert13Provider with ChangeNotifier {
  TombolInitial _tombolInitial = TombolInitial.initial;
  TombolInitial get tombolState => _tombolInitial;
  set setTombolState(val) {
    _tombolInitial = val;
    notifyListeners();
  }

  getData() {
    print("trigger server");
    setTombolState = TombolInitial.loading;
    Future.delayed(Duration(seconds: 5), () {
      setTombolState = TombolInitial.loaded;
    });
  }
}
