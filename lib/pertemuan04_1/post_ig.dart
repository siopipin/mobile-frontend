import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04_1/angkah_satu.dart';

class PostIGScren extends StatefulWidget {
  final String judul;
  PostIGScren({Key? key, required this.judul}) : super(key: key);

  @override
  State<PostIGScren> createState() => _PostIGScrenState();
}

class _PostIGScrenState extends State<PostIGScren> {
  //Gunakan State
  int ttl = 0;

  bool? isLove;

  hitungTTL() {
    ttl += 1;
  }

  //initial State
  @override
  void initState() {
    isLove = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Foto
            AngkahSatu(ttl: ttl),
            Image.asset('assets/logo.png'),

            //Caption
            Text('Hallo, pagi yang indah.'),

            //Row iconbutton
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isLove = true;
                        hitungTTL();
                      });
                    },
                    icon: Icon(
                      Icons.heart_broken,
                      color: isLove == true ? Colors.red : Colors.grey,
                    )),
                isLove == true ? Text('Liked') : Container(),
                SizedBox(width: 10),
                Icon(Icons.comment),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
    );
  }
}
