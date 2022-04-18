import 'package:flutter/material.dart';

class ArtmScreen extends StatelessWidget {
  const ArtmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int time = 100;
    double margin = 20.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Aritm Screen'),
      ),
      body: Container(
        height: 200,
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //icon
                Container(
                  margin: EdgeInsets.only(right: margin),
                  child: const Icon(
                    Icons.access_alarm_rounded,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                //text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //atas
                    Text(time.toString(),
                        style: const TextStyle(color: Colors.white)),

                    //bawah
                    const Text('201111760')
                  ],
                ),
                const SizedBox(width: 20),
                //img
                CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/logo.png', width: 100),
                )
              ],
            ),

            //Footer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Kiri
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Atas
                    Text('Rickie Rivaldo'),
                    //Bawah
                    Text('201112220')
                  ],
                ),

                //Kanan
                ElevatedButton(onPressed: () {}, child: Text('Klik saya'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
