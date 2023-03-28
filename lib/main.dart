import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan01/pertemuan01_screen.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';
import 'package:flutter_application/pertemuan02/teori02_screen.dart';
import 'package:flutter_application/pertemuan03/pert03_screen.dart';
import 'package:flutter_application/pertemuan03/pertemuan03_screen_praktek.dart';

//Import Minggu M15
import 'package:flutter_application/pertemuan15/pertemuan15_provider.dart';
import 'package:flutter_application/pertemuan15/pertemuan15_screen.dart';
import 'package:provider/provider.dart';

import 'pertemuan03/components/textfield_widget.dart';

void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu15
    ChangeNotifierProvider(create: (_) => Pertemuan15Provider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Front-End',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: const Pertemuan03ScreenPraktek(),
    );
  }
}
