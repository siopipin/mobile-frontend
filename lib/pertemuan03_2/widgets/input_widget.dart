import 'package:flutter/material.dart';

class InputOTP extends StatelessWidget {
  const InputOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(right: 10),
          child: TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          )),
    );
  }
}
