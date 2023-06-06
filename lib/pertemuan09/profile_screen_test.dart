import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09/p09_ifb_screen.dart';
import 'package:flutter_application/pertemuan09/widgets/drawer_widget.dart';

class ProfileTest extends StatefulWidget {
  ProfileTest({super.key});

  @override
  State<ProfileTest> createState() => ProfileTestState();
}

class ProfileTestState extends State<ProfileTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Appbar"),
            bottom: TabBar(tabs: [
              Text("Home"),
              Text("Profile"),
              Text("About"),
              Text("Privasi"),
            ]),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: [
            P09IFBScreen(),
            Text("Profile"),
            Text("About"),
            Text("Privasi"),
          ]),
        ));
  }
}
