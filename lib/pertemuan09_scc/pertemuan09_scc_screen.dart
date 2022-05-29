import 'package:flutter/material.dart';

class Pertemuan09ScreenSCC extends StatefulWidget {
  Pertemuan09ScreenSCC({Key? key}) : super(key: key);

  @override
  State<Pertemuan09ScreenSCC> createState() => _Pertemuan09ScreenSCCState();
}

class _Pertemuan09ScreenSCCState extends State<Pertemuan09ScreenSCC> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            bottom: TabBar(tabs: [
              Tab(text: 'Chat'),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ]),
          ),
          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerHeader(
                  child: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.inbox),
                  title: Text('Inbox'),
                ),
                Divider()
              ],
            ),
          ),
          body: TabBarView(children: [
            // anak1
            Text('Anak 1'),

            // anak2
            Image.asset('assets/twitter_logo.png'),

            // anak3
            Builder(builder: ((context) {
              return ListTile(
                onTap: () {
                  showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 200,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.red),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Title'),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.close))
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text('Calls Now'),
                              )
                            ],
                          ),
                        );
                      });
                },
                title: Text('Panggilan 0877656454'),
                trailing: Icon(Icons.people),
              );
            }))
          ]),
        ));
  }
}
