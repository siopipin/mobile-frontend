import 'package:flutter/material.dart';

class Kursi extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback? function;
  const Kursi({
    Key? key,
    required this.title,
    required this.color,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
