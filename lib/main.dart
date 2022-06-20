import 'package:flutter/material.dart';
//Import Minggu M13
import 'package:flutter_application/pertemuan13/pertemuan13_provider.dart';
import 'package:flutter_application/pertemuan13/pertemuan13_screen.dart';
import 'package:flutter_application/pertemuan13/pertemuan13ifc_provider.dart';
import 'package:flutter_application/pertemuan13/pertemuan13ifc_screen.dart';
import 'package:flutter_application/pertemuan13scb/pertemuan13scb_provider.dart';
import 'package:flutter_application/pertemuan13scb/pertemuan13scb_screen.dart';
import 'package:flutter_application/pertemuan14/pertemuan14_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //Provider minggu13
    ChangeNotifierProvider(create: (_) => Pertemuan13Provider()),
    ChangeNotifierProvider(create: (_) => Pertemuan13SCBProvider()),
    ChangeNotifierProvider(create: (_) => Pertemuan13IFCProvider()),
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
      home: Pertemuan14Screen(),
    );
  }
}
