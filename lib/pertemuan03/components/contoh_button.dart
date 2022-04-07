import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContohButtonScreen extends StatelessWidget {
  const ContohButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          //Textfield
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                  label: Text('Label Alamat'),
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  label: Text('Alamat'),
                  border: UnderlineInputBorder(),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text('Label Alamat'),
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(Icons.add),
                    suffixIcon: Icon(Icons.send)),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      width: 200,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text('Label Alamat'),
                            border: UnderlineInputBorder(),
                            prefixIcon: Icon(Icons.add),
                            suffixIcon: Icon(Icons.send)),
                      )),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('Label Alamat'),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.add),
                    ),
                  )),
                ],
              )
            ]),
          ),

          //atas
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('+ Keranjang')),

          //tengah
          OutlinedButton(
            onPressed: () {},
            child: Text('Beli Langsung'),
            style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(width: 2, color: Colors.green)),
          ),

          //bawah
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Kiri
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),

              // Tengah
              TextButton(
                  onPressed: () {},
                  child: Row(children: [
                    Icon(
                      Icons.heart_broken,
                      color: Colors.grey,
                    ),
                    Text(
                      'Wishlist',
                      style: TextStyle(color: Colors.black),
                    )
                  ])),

              // Kanan
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.grey,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
            ],
          )
        ],
      )),
    );
  }
}
