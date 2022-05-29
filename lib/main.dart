import 'package:flutter/material.dart';

//Import Minggu M09
import 'package:flutter_application/pertemuan09/pertemuan09_provider.dart';
import 'package:flutter_application/pertemuan09/pertemuan09_screen.dart';
import 'package:flutter_application/pertemuan09_1/pertemuan09_praktek_screen.dart';
import 'package:flutter_application/pertemuan09_scc/pertemuan09_scc_screen.dart';
import 'package:flutter_application/pertemuan09_scc_praktek/pertemuan09_scc_praktek_screen.dart';
import 'package:flutter_application/pertemuan10/pertemuan10_screen.dart';
import 'package:flutter_application/pertemuan10_praktek_screen/pertemuan10_praktek_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    /// Provider kita pindahkan pada void main agar MyApp dapat menggunakan provider.
    /// Tambahkan provider disini!
    /// Provider minggu lalu, ini dihapus jika terjadi error.
    // ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
    // ChangeNotifierProvider(create: (_) => Pertememuan05SCProvider()),
    // ChangeNotifierProvider(create: (_) => IFBProvider()),
    // ChangeNotifierProvider(create: (_) => LogicProvider()),
    // ChangeNotifierProvider(create: (_) => Pertemuan06Provider()),
    // ChangeNotifierProvider(create: (_) => Pertemuan07Provider()),

    //Provider minggu09
    ChangeNotifierProvider(create: (_) => Pertemuan09Provider())
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
      home: Pertemuan10PraktekScreen(),
    );
  }
}
