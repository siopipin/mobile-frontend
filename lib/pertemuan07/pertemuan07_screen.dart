import 'package:flutter/material.dart';
import 'package:flutter_application/components/notifikasi_widget.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';
import 'package:flutter_application/pertemuan05_1/pertemun05_1screen.dart';
import 'package:flutter_application/pertemuan07/components/pertemuan07_body.dart';
import 'package:flutter_application/pertemuan07/pertemuan07_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan07Screen extends StatefulWidget {
  const Pertemuan07Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan07Screen> createState() => _Pertemuan07ScreenState();
}

class _Pertemuan07ScreenState extends State<Pertemuan07Screen> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _body = [
    const Pertemuan07Body(title: "Beranda"),
    const Pertemuan07Body(title: "Chat"),
    const Pertemuan07Body(title: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan07Provider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print(
                  'Hallo ini drawer yang akan kami pelajari di minggu depan.');
            },
            icon: const Icon(Icons.menu)),
        title: const Text('Pertemuan06'),
        actions: [
          //Komponen notifikasi
          const NotifikasiWidget(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
                onPressed: () {
                  prov.resetNotif();
                },
                icon: const Icon(Icons.delete)),
          ),
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Pertemuan02Screen())),
              icon: const Icon(Icons.more_vert)),
          Text('+')
        ],
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.plus_one),
          onPressed: () {
            prov.setTTLNotif = 1;
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: _body[_currentIndex],
      ),
    );
  }
}
