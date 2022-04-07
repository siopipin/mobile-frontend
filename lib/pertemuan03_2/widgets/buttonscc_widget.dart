import 'package:flutter/material.dart';

class ButtonSCCWidget extends StatelessWidget {
  String judul;
  ButtonSCCWidget({Key? key, required this.judul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(judul));
  }
}
