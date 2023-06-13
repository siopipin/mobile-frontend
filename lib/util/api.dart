import 'package:flutter/material.dart';

class API {
  //getNIM
  var nim;
  getNIM() {
    Future.delayed(Duration(seconds: 2), () {
      nim = "19111241";
    }).then((value) {
      print(nim);
    });
  }
}
