import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';
import 'package:flutter_application/pertemuan03/components/contoh_button.dart';
import 'package:flutter_application/pertemuan03/components/elevatedbutton_widget.dart';
import 'package:flutter_application/pertemuan03/components/textfield_widget.dart';
import 'package:flutter_application/pertemuan03_1/elevatedbutton_widget.dart';
import 'package:flutter_application/pertemuan03_1/textbutton_widget.dart';
import 'package:flutter_application/pertemuan03_2/pertemuan_scc.dart';
import 'package:flutter_application/pertemuan03_2/textbutton_widget.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application/pertemuan04/setstate/login_screen.dart';
import 'package:flutter_application/pertemuan04_1/otp.dart';
import 'package:flutter_application/pertemuan04_2/logika.dart';
import 'package:flutter_application/pertemuan04_2/ui.dart';
import 'package:flutter_application/pertemuan04_3/login_ig.dart';
import 'package:flutter_application/pertemuan04_4/tixid_prov_screen.dart';
import 'package:flutter_application/pertemuan04_4/tixid_screen.dart';
import 'package:flutter_application/pertemuan05/pertemaun05_sc.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_provider.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_sc_provider.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_screen.dart';
import 'package:flutter_application/pertemuan05_1/ifb_provider.dart';
import 'package:flutter_application/pertemuan05_1/pertemun05_1screen.dart';
import 'package:flutter_application/pertemuan05_2/checkbox_scc.dart';
import 'package:flutter_application/pertemuan05_2/logic_provider.dart';
import 'package:flutter_application/pertemuan05_2/praktek_05.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// Tambahkan provider disini!

        ChangeNotifierProvider(create: (_) => Pertemuan05Provider()),
        ChangeNotifierProvider(create: (_) => Pertememuan05SCProvider()),
        ChangeNotifierProvider(create: (_) => IFBProvider()),
        ChangeNotifierProvider(create: (_) => LogicProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: Praktek05Screen()),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProdukProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: TixIDProvScreen()),
    );
  }
}
