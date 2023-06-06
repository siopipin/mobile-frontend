// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan07/widgets/p7_profile.dart';
import 'package:flutter_application/pertemuan07/widgets/p7home.dart';

class P7Screen extends StatefulWidget {
  const P7Screen({super.key});

  @override
  State<P7Screen> createState() => _P7ScreenState();
}

class _P7ScreenState extends State<P7Screen> {
  int index = 0;

  var listBody = [
    p7Home(title: "Home"),
    P7Profile(),
    p7Home(title: "Payment"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //prominent
        toolbarHeight: 120,

        //bg color
        backgroundColor: Colors.black,

        //navigasi
        leading: Icon(Icons.menu),
        //logo/ branding
        //title
        title: Column(
          children: [
            //atas: title
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.facebook),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text("Facebook"),
              )
            ]),

            //bawah: icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.food_bank),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.food_bank),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.food_bank),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.food_bank),
                ),
              ],
            )
          ],
        ),
        //action
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket_outlined),
          ),
          SizedBox(width: 16),
        ],

        //elevation
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text("Tambah Email"),
                );
              });
        },
        child: Icon(Icons.shopping_basket),
      ),
      body: listBody[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (val) {
            print(val);
            setState(() {
              index = val;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.payment), label: "Payment"),
          ]),
    );
  }
}
