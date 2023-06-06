import 'package:flutter/material.dart';

class p7Home extends StatelessWidget {
  String title;
  p7Home({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
