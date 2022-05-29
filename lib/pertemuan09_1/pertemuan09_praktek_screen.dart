import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09_1/about_09_screen.dart';
import 'package:flutter_application/pertemuan09_1/inbox.dart';

class Pertemuan09PraktekScreen extends StatefulWidget {
  Pertemuan09PraktekScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan09PraktekScreen> createState() =>
      _Pertemuan09PraktekScreenState();
}

class _Pertemuan09PraktekScreenState extends State<Pertemuan09PraktekScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Pertemuan09Praktek'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(
                icon: Icon(
                  Icons.message,
                ),
                text: 'Notification',
              ),
              Tab(
                icon: Icon(Icons.telegram),
                text: 'About',
              ),
            ]),
          ),
          drawer: Drawer(
              child: Scrollbar(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.purple),
                    child: Container(
                      child: Row(children: [
                        Text(
                          'Sio',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    )),
                ListTile(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              InboxScreen(title: 'Inbox'))))),
                  leading: Icon(Icons.inbox),
                  title: Text('Inbox'),
                ),
                ListTile(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              InboxScreen(title: 'Archived'))))),
                  leading: Icon(Icons.archive),
                  title: Text('Archived'),
                ),
              ],
            ),
          )),
          body: TabBarView(children: [
            bukaSheetsShare(),
            Text('Notification'),
            About09Screen(),
          ]),
        ));
  }

  bukaSheetsShare() {
    return Builder(builder: ((context) {
      return Center(
          child: TextButton(
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 200,
                        child: Column(children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            color: Colors.purple,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ))
                                ]),
                          ),
                          ListTile(
                            leading: Icon(Icons.facebook),
                            title: Text('Facebook'),
                          ),
                          ListTile(
                            leading: Icon(Icons.telegram),
                            title: Text('Telegram'),
                          )
                        ]),
                      );
                    });
              },
              child: Text('Share')));
    }));
  }
}
