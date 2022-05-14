import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan07/components/pertemuan07_body.dart';

class Pertemuan07Praktek extends StatefulWidget {
  Pertemuan07Praktek({Key? key}) : super(key: key);

  @override
  State<Pertemuan07Praktek> createState() => _Pertemuan07PraktekState();
}

class _Pertemuan07PraktekState extends State<Pertemuan07Praktek> {
  int _index = 0;
  List body = [
    Pertemuan07Body(title: 'Home'),
    Pertemuan07Body(title: 'Search'),
    Pertemuan07Body(title: 'notif'),
    Pertemuan07Body(title: 'profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 250,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Telusuri Drive'),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://compote.slate.com/images/8eb84c45-4640-4ac1-84cf-5434a07400ac.jpg'),
                ),
                Positioned(
                    bottom: 5,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      height: 20,
                      width: 20,
                    )),
              ],
            ),
            SizedBox(width: 15)
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          //Terapkan sebuah scrollview
          child: body[_index],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_box_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (val) {
              setState(() {
                _index = val;
              });
            },
            backgroundColor: Colors.black87,
            selectedItemColor: Colors.blue[900],
            unselectedItemColor: Colors.blue,
            unselectedLabelStyle: TextStyle(color: Colors.blue),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_add), label: 'Notif'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'People'),
            ]));
  }
}
