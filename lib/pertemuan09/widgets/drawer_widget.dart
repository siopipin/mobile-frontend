import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan07/components/profile_screen_scc.dart';
import 'package:flutter_application/pertemuan09/profile_screen_test.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: RefreshIndicator(
      onRefresh: () async {
        print("On refresh");
      },
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 50,
                backgroundImage: NetworkImage(
                    "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/01/03/1365449847.jpg"),
              ),
              Text("Willie Salim")
            ],
          )),
          Divider(),
          GestureDetector(
            onTap: () {
              print("Go to Home");
            },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileTest(
                            dev: "",
                          )));
            },
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text(
                "Profile",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Go to Home");
            },
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text(
                "Account",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Go to Home");
            },
            child: ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text(
                "Privasi",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          GestureDetector(
            onTap: () {
              print("Go to Home");
            },
            child: ListTile(
              leading: Icon(Icons.outbond),
              title: Text(
                "Logout",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
