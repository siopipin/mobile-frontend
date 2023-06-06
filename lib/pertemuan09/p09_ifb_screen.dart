// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09/widgets/drawer_widget.dart';

class P09IFBScreen extends StatefulWidget {
  const P09IFBScreen({super.key});

  @override
  State<P09IFBScreen> createState() => _P09IFBScreenState();
}

class _P09IFBScreenState extends State<P09IFBScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: Column(
        children: [Text("Home")],
      ),
    );
  }
}
