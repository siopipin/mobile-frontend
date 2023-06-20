import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09/p09_ifb_screen.dart';
import 'package:flutter_application/pertemuan09/widgets/drawer_widget.dart';

class ProfileTest extends StatefulWidget {
  final String title;
  final String dev;

  ProfileTest({super.key, this.title = "Profile", required this.dev});

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
            title: Text(widget.title),
            bottom: TabBar(tabs: [
              Text(widget.dev),
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
