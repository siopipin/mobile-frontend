import 'package:flutter/material.dart';

class Pertemuan01Screen extends StatefulWidget {
  String title;
  Pertemuan01Screen({super.key, required this.title});

  @override
  State<Pertemuan01Screen> createState() => _Pertemuan01ScreenState();
}

class _Pertemuan01ScreenState extends State<Pertemuan01Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(
        children: [
          //text
          Text("Text 1"),

          //icon

          //gambar
        ],
      ),
    );
  }
}
