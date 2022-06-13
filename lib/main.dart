import 'package:flutter/material.dart';

//Import Minggu M09
import 'package:flutter_application/pertemuan09/pertemuan09_provider.dart';
import 'package:flutter_application/pertemuan09/pertemuan09_screen.dart';
import 'package:flutter_application/pertemuan09_1/pertemuan09_praktek_screen.dart';
import 'package:flutter_application/pertemuan09_scc/pertemuan09_scc_screen.dart';
import 'package:flutter_application/pertemuan09_scc_praktek/pertemuan09_scc_praktek_screen.dart';
import 'package:flutter_application/pertemuan10/pertemuan10_screen.dart';
import 'package:flutter_application/pertemuan10_Praktek_SCC/pertemuan10PraktekSCC.dart';
import 'package:flutter_application/pertemuan10_praktek_screen/pertemuan10_praktek_screen.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_provider.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_screen.dart';
import 'package:flutter_application/pertemuan11_praktek/pertemuan11praktek_provider.dart';
import 'package:flutter_application/pertemuan11_praktek/pertemuan11praktek_screen.dart';
import 'package:flutter_application/pertemuan11scc/pertemuan11_scc_screen.dart';
import 'package:flutter_application/pertemuan11scc/pertemuanscc_provider.dart';
import 'package:flutter_application/pertemuan12/pert12prov.dart';
import 'package:flutter_application/pertemuan12/pertemuan12_provider.dart';
import 'package:flutter_application/pertemuan12/pertemuan12_screen.dart';
import 'package:flutter_application/pertemuan12/pertemuan12scb.dart';
import 'package:flutter_application/pertemuan13/pertemuan13_provider.dart';
import 'package:flutter_application/pertemuan13/pertemuan13_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu12
    ChangeNotifierProvider(create: (_) => Pertemuan12Provider()),
    ChangeNotifierProvider(create: (_) => Pert12Prov()),
    ChangeNotifierProvider(create: (_) => Pertemuan13Provider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // uncomment ini untuk menggunakan Provider Pertemuan06Provider()
    // final prov = Provider.of<Pertemuan06Provider>(context);
    return MaterialApp(
      title: 'Mobile Front-End',
      debugShowCheckedModeBanner: false,
      // Gunakan "theme" ini untuk menerapkan enable dark mode sesuai topik materi minggu06 tentang switch.

      // theme: prov.isActive == true ? prov.dark : prov.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: Pertemuan13Screen(),
    );
  }
}
