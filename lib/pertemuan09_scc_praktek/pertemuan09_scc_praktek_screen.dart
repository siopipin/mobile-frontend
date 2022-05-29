import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09_1/inbox.dart';
import 'package:flutter_application/pertemuan09_scc_praktek/coba.dart';
import 'package:flutter_application/pertemuan09_scc_praktek/databaru_screen.dart';

class Pertemuan09SCCPraktekScreen extends StatefulWidget {
  Pertemuan09SCCPraktekScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan09SCCPraktekScreen> createState() =>
      _Pertemuan09SCCPraktekScreenState();
}

class _Pertemuan09SCCPraktekScreenState
    extends State<Pertemuan09SCCPraktekScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Data'),
            bottom: const TabBar(
                indicatorColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    text: 'Terbaru',
                  ),
                  Tab(
                    text: 'Chats',
                  )
                ]),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //gambar
                        CircleAvatar(
                          child: Image.asset('assets/twitter_logo.png'),
                        ),
                        //username
                        Text('Dayanah'),

                        //email.
                        Text('dayana@mail.com')
                      ],
                    )),
                ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              InboxScreen(title: 'Data 1')))),
                  title: Text('Inbox'),
                  subtitle: Text('Ini adalah Inbox'),
                ),
                ListTile(
                  title: Text('Data 1'),
                  subtitle: Text('Ini adalah data'),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [DataBaruScreen(), CobaScreen()]),
        ));
  }
}
