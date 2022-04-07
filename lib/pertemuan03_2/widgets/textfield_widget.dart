import 'package:flutter/material.dart';

class TextFieldSCC extends StatelessWidget {
  String title;
  IconData? icon;
  TextFieldSCC({Key? key, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title == 'Umur') {
      return TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: title,
          prefixIcon: Icon(icon),
        ),
      );
    } else if (title == 'Alamat') {
      return TextField(
        maxLines: 3,
        decoration: InputDecoration(
          labelText: title,
          suffixIcon: Icon(icon),
        ),
      );
    } else {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: title,
        ),
      );
    }

    // return TextField(
    //   decoration: InputDecoration(
    //     labelText: title,
    //     prefixIcon: title == 'Umur' ? Icon(icon) : null,
    //   ),
    // );
  }
}
