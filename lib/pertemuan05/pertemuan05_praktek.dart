import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_praktek_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan05Praktek extends StatefulWidget {
  const Pertemuan05Praktek({super.key});

  @override
  State<Pertemuan05Praktek> createState() => _Pertemuan05PraktekState();
}

class _Pertemuan05PraktekState extends State<Pertemuan05Praktek> {
  @override
  Widget build(BuildContext context) {
    // cara1
    final logic = Provider.of<Pertemuan05PrektekProv>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChoiceChip(
              label: Text("Sekolah"),
              selectedColor: Colors.blue,
              selected: logic.statusSekolah,
              onSelected: (val) {
                logic.setStatusSekolah = val;
              },
            )
          ],
        ),
      ),
    );
  }
}
