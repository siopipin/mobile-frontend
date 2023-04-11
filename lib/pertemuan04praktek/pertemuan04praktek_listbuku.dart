// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Pertemuan04PraktekListBuku extends StatefulWidget {
  const Pertemuan04PraktekListBuku({super.key});

  @override
  State<Pertemuan04PraktekListBuku> createState() =>
      _Pertemuan04PraktekListBukuState();
}

class _Pertemuan04PraktekListBukuState
    extends State<Pertemuan04PraktekListBuku> {
  int ttlKeranjang = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Buku"),
        actions: [
          Icon(Icons.shopping_basket_sharp),
          Text(
            ttlKeranjang.toString(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //List buku 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Buku 1"),
                  Text("Desc"),
                ],
              ),
              Row(
                children: [
                  //icon 1
                  IconButton(
                    onPressed: () {
                      setState(() {
                        ttlKeranjang--;
                        isSelected = true;
                      });
                    },
                    icon: Icon(Icons.remove_circle),
                  ),

                  //icon 2
                  IconButton(
                    onPressed: () {
                      setState(() {
                        ttlKeranjang++;
                        isSelected = false;
                      });
                    },
                    icon: isSelected
                        ? Icon(Icons.add_box)
                        : Icon(Icons.check_box),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
