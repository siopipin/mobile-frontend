import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_detail_screen.dart';
import 'package:flutter_application/pertemuan02/teori02_screen.dart';

class Pertemuan02Screen extends StatelessWidget {
  const Pertemuan02Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan 02')),
      body: Column(children: [
        //atas
        Text('Ke Halaman Detail'),

        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Teori02Screen()));
            },
            child: Text("Pert02 Detail")),

        //bawah
        ElevatedButton(
            onPressed: () {
              //klik
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Pertemuan02DetailScreen()));
            },
            child: Text('Petemuan 01')),

        Text('Ke Halaman Detail'),

        //bawah
        ElevatedButton(
            onPressed: () {
              //klik
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Pertemuan02DetailScreen()));
            },
            child: Text('Petemuan 02')),

        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 80,
            color: Colors.blue,
            child: Center(
                child: Text(
              'Klik saya 2',
              style: TextStyle(color: Colors.white),
            )),
          ),
        )
      ]),
    );
  }
}
