import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Teori02Screen extends StatefulWidget {
  const Teori02Screen({super.key});

  @override
  State<Teori02Screen> createState() => _Teori02ScreenState();
}

class _Teori02ScreenState extends State<Teori02Screen> {
  String textBerita =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's";

  Widget btnCustom({String? title, String? desc}) => ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(title!));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            //latihan 1: align
            buttonWidgetCustom("Home"),
            buttonWidgetCustom("Profile"),
            buttonWidgetCustom("Pulang"),

            btnCustom(title: "Hallo Bandung", desc: "Test"),

            //latihan 2: Row dengan image

            //latihan3

            Column(
              children: [],
            ),

            // Widget align untuk mengatur aligment dalam widget.
            Align()
          ],
        ));
  }

  Widget buttonWidgetCustom(String title) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(title));
  }

  Widget test() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(16),
      // height: 200,
      width: double.infinity,
      child: Row(children: [
        // Rkiri
        Column(
          children: [
            Container(
              width: 190,
              child: Image.network(
                  'https://awsimages.detik.net.id/community/media/visual/2019/04/24/de2758a6-ea38-4ae9-8c4b-f2b395a81a22_43.png?w=700&q=90'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                // r kiri
                Icon(Icons.thumb_up),
                // r kanan
                Icon(Icons.thumb_down)
              ],
            )
          ],
        ),

        SizedBox(
          width: 10,
        ),
        // Rkanan
        Expanded(
            child: Column(
          children: [
            //kolom 1
            Text("Judul1 berita Judul berita Judul berita Judul berita1 "),
            SizedBox(
              height: 10,
            ),
            // kolom 2
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //row kiri
                Icon(Icons.one_k),
                SizedBox(
                  width: 16,
                ),
                //row kanan
                Icon(Icons.ac_unit)
              ],
            ),

            Divider(
              color: Colors.white,
            ),

            // kolom 3
            Text("${textBerita.substring(0, 50)} Read more..")
          ],
        ))
      ]),
    );
  }
}
