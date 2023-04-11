import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04teori/pert04_provider.dart';
import 'package:provider/provider.dart';

class Pert04Screen extends StatefulWidget {
  const Pert04Screen({super.key});

  @override
  State<Pert04Screen> createState() => _Pert04ScreenState();
}

class _Pert04ScreenState extends State<Pert04Screen> {
  @override
  Widget build(BuildContext context) {
    final pert04Prov = context.watch<Pert04Provider>();
    print("hallo");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            pert04Prov.nama!,
            style: TextStyle(fontSize: 80),
          ),
          ElevatedButton(
              onPressed: () {
                pert04Prov.setNama = "Anton";
              },
              child: Text("setnama"))
        ],
      ),
    );
  }
}
