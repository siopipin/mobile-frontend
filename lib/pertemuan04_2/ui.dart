import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04_2/logika.dart';
import 'package:provider/provider.dart';

class UIClass extends StatefulWidget {
  UIClass({Key? key}) : super(key: key);

  @override
  State<UIClass> createState() => _UIClassState();
}

class _UIClassState extends State<UIClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //material
          Text(context.watch<LogikaProvider>().nama),
          // Text(provider.hasil.toString())

          //gunakan button utk hitung
        ],
      ),
    );
  }
}
