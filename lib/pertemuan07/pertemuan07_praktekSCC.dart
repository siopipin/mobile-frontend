import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan07/components/home_screen_scc.dart';
import 'package:flutter_application/pertemuan07/components/profile_screen_scc.dart';
import 'package:flutter_application/pertemuan07/components/search_screen_scc.dart';

class Pertemuan07PraktekSCC extends StatefulWidget {
  Pertemuan07PraktekSCC({Key? key}) : super(key: key);

  @override
  State<Pertemuan07PraktekSCC> createState() => _Pertemuan07PraktekSCCState();
}

class _Pertemuan07PraktekSCCState extends State<Pertemuan07PraktekSCC> {
  int _currentIndex = 0;

  List _body = [
    //body home
    HomeScreenSCC(),

    //body chat\
    SearchScreen(),

    //body profile
    ProfileScreenSCC()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: false,
        actions: [
          Container(
              margin: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Cari di toko'),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.close)),
              )),
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    child: Center(
                        child: const Text(
                      '0',
                      textAlign: TextAlign.center,
                    )),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ))
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black45,
        onPressed: () {},
        icon: Icon(Icons.calendar_month),
        label: Text('Presensi'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile')
          ]),
      body: _body[_currentIndex],
    );
  }
}
