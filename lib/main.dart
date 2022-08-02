import 'package:flutter/material.dart';
//Import Minggu M15
import 'package:flutter_application/pertemuan15/pertemuan15_provider.dart';
import 'package:flutter_application/pertemuan15/pertemuan15_screen.dart';
import 'package:provider/provider.dart';

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
      home: const Pertemuan15Screen(),
    );
  }
}
