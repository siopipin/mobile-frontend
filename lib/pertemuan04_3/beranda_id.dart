import 'package:flutter/material.dart';

class BerandaIG extends StatefulWidget {
  final String username;
  BerandaIG({Key? key, required this.username}) : super(key: key);

  @override
  State<BerandaIG> createState() => _BerandaIGState();
}

class _BerandaIGState extends State<BerandaIG> {
  bool? isLiked;
  int ttlLike = 0;

  @override
  void initState() {
    isLiked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beranda IG')),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //IMG
              Text(
                ttlLike.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Image.asset(
                'assets/logo.png',
                width: 200,
              ),

              //Caption
              Text(widget.username),

              //Row Icon Button Like, Comment, Share
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        //Jika ada klik suka, ganti warna icon hati menjadi merah.
                        // ttlLike++;

                        setState(() {
                          isLiked = true;
                          ttlLike += 1;
                        });
                      },
                      icon: Icon(
                        Icons.heart_broken,
                        color: isLiked == false ? Colors.grey : Colors.red,
                      )),
                  isLiked == true ? Text('Liked') : Container(),
                  Icon(Icons.chat),
                  Icon(Icons.share)
                ],
              )
            ],
          )),
    );
  }
}
