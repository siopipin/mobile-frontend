import 'package:flutter/material.dart';

class Pertemuan10PraktekScreen extends StatefulWidget {
  Pertemuan10PraktekScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan10PraktekScreen> createState() =>
      _Pertemuan10PraktekScreenState();
}

class _Pertemuan10PraktekScreenState extends State<Pertemuan10PraktekScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo'),
      ),
      body: Text('Hallo juga'),
    );
  }
}
