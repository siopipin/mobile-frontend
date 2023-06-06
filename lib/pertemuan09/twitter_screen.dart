// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TwitterScreen extends StatefulWidget {
  const TwitterScreen({super.key});

  @override
  State<TwitterScreen> createState() => _TwitterScreenState();
}

class _TwitterScreenState extends State<TwitterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(children: [
        SizedBox(
          height: 200,
          child: DrawerHeader(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc="),
                  ),
                  Icon(
                    Icons.circle_notifications_outlined,
                    size: 30,
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Sio J.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              Text(
                "@siopipin",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "34 ",
                        style: TextStyle(
                          fontSize: 17,
                        )),
                    TextSpan(text: "Following")
                  ])),
                  SizedBox(width: 30),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "5 ",
                        style: TextStyle(
                          fontSize: 17,
                        )),
                    TextSpan(text: "Followers")
                  ])),
                ],
              )
            ],
          )),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.people_outline_sharp,
            color: Colors.black,
          ),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.chat_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Topics",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: ExpansionTile(title: Text("Professional Tools"), children: [
            ListTile(
              leading: Icon(Icons.airplanemode_active_sharp),
              title: Text("Twitter for Professionalls"),
            ),
            ListTile(
              leading: Icon(Icons.ads_click_sharp),
              title: Text("Twitter ads"),
            )
          ]),
        )
      ])),
    );
  }
}
