import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan11/models/p11_model.dart';
import 'package:http/http.dart';

class P11Provider extends ChangeNotifier {
  //ChangeNotif.

  Client client = Client();

  CustomerModel _data = CustomerModel();
  CustomerModel get data => _data;
  set setDataCst(val) {
    _data = val;
    notifyListeners();
  }

  getDataServer() async {
    var url = "https://dev-api-employee.kerjaplus.id/public/users/userid/31563";
    Response response = await client.get(Uri.parse(url));

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var tmp = json.decode(response.body);

      setDataCst = CustomerModel.fromJson(tmp);
      print("nama customer: ${data.nameEmployee}");
    }
  }
}
