import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan03_2/widgets/input_widget.dart';

class PertemuanSCCScreen extends StatelessWidget {
  const PertemuanSCCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        //Button
        ElevatedButton(
            onPressed: () {},
            style:
                ElevatedButton.styleFrom(primary: Colors.yellow, elevation: 0),
            child: const Text('Klik Saya')),

        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                primary: Colors.blueAccent,
                side: BorderSide(width: 10, color: Colors.green)),
            child: const Text('OutlineButton')),

        TextButton(onPressed: () {}, child: const Text('Hallo Klik Saya')),

        Text('Klik Saya'),

        IconButton(
            onPressed: () {
              print('print icon');
            },
            icon: Icon(Icons.share)),

        GestureDetector(
          onTap: () {
            print('Hallo saya diklik');
          },
          child: Image.asset(
            'assets/logo.png',
            width: 100,
          ),
        ),

        TextButton(
            onPressed: () {
              print('Hallo');
            },
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                'Hallo',
                style: TextStyle(color: Colors.white),
              )),
            )),

        GestureDetector(
          onTap: () {
            print('Go Ride');
          },
          child: Column(
            children: [
              //stack
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 1,
                    child: Icon(
                      Icons.radio_rounded,
                      size: 60,
                    ),
                  )
                ],
              )

              //text
              ,
              Text('GoRide')
            ],
          ),
        ),

        //TextField

        Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  hintText: 'Isi dengan email menggunakan @',
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send)),
            )),

        SizedBox(
          height: 30,
        ),

        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Email',
              hintText: 'Isi dengan email menggunakan @',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.send)),
        ),

        Row(
          children: [
            InputOTP(),
            InputOTP(),
            InputOTP(),
            InputOTP(),
          ],
        )
      ]),
    );
  }
}
