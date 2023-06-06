import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan01/pertemuan01_screen.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';
import 'package:flutter_application/pertemuan02/teori02_screen.dart';
import 'package:flutter_application/pertemuan03/pert03_screen.dart';
import 'package:flutter_application/pertemuan03/pertemuan03_screen_praktek.dart';
import 'package:flutter_application/pertemuan04/setstate/login_screen.dart';
import 'package:flutter_application/pertemuan04/setstate/pert4coba_initstate.dart';
import 'package:flutter_application/pertemuan04/setstate/pertemuan04_ifbpagi.dart';
import 'package:flutter_application/pertemuan04praktek/pertemuan04praktek_listbuku.dart';
import 'package:flutter_application/pertemuan04teori/pert04_provider.dart';
import 'package:flutter_application/pertemuan04teori/pert04_screen.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_praktek.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_praktek_provider.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_screen.dart';
import 'package:flutter_application/pertemuan06/pertemuan06_provider.dart';
import 'package:flutter_application/pertemuan06/pertemuan06_screen.dart';
import 'package:flutter_application/pertemuan06/pertemuan06_teori_ifb.dart';
import 'package:flutter_application/pertemuan06/pertemuan06teori_provider.dart';
import 'package:flutter_application/pertemuan07/p7_screen.dart';
import 'package:flutter_application/pertemuan07/pertemuan07_provider.dart';
import 'package:flutter_application/pertemuan07/pertemuan07_screen.dart';
import 'package:flutter_application/pertemuan09/p09_ifb_screen.dart';
import 'package:flutter_application/pertemuan09/pertemuan09_provider.dart';
import 'package:flutter_application/pertemuan09/pertemuan09_screen.dart';
import 'package:flutter_application/pertemuan09/twitter_screen.dart';
import 'package:flutter_application/pertemuan10/pertemaun10_if_b_screen.dart';
import 'package:flutter_application/pertemuan10/pertemuan10_screen.dart';
import 'package:flutter_application/pertemuan11/p11_praktek_screen.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_provider.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_screen.dart';

//Import Minggu M15
import 'package:flutter_application/pertemuan15/pertemuan15_provider.dart';
import 'package:flutter_application/pertemuan15/pertemuan15_screen.dart';
import 'package:provider/provider.dart';

import 'pertemuan03/components/textfield_widget.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu5
    ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
    //Provider minggu15
    ChangeNotifierProvider(create: (_) => Pertemuan15Provider()),
    //Provider minggu04
    ChangeNotifierProvider(create: (_) => Pert04Provider()),

    //Provider minggu05
    ChangeNotifierProvider(create: (_) => Pertemuan05PrektekProv()),

    //Provider minggu06
    ChangeNotifierProvider(create: (_) => Pertemuan06Provider()),

    //Provider minggu06.1
    ChangeNotifierProvider(create: (_) => Pertemuan06TeoriProvider()),

    //Provider minggu07
    ChangeNotifierProvider(create: (_) => Pertemuan07Provider()),

    //Provider minggu09
    ChangeNotifierProvider(create: (_) => Pertemuan09Provider()),

    //Provider minggu11
    ChangeNotifierProvider(create: (_) => Pertemuan11Provider())
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
        primarySwatch: Colors.blue,
      ),
      home: P11PraktekScreen(),
    );
  }
}
