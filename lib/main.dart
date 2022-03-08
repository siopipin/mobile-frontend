import 'package:flutter/material.dart';
import 'package:flutter_application/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
          primarySwatch: Colors.cyan, primaryColorDark: Colors.black45),
      home: const MyHomePage(title: 'E-Food', name: 1),
    );
  }
}
