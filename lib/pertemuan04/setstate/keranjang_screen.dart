import 'package:flutter/material.dart';

class KeranjangScreen extends StatefulWidget {
  final List<Map<String, String>> keranjang;
  KeranjangScreen({Key? key, required this.keranjang}) : super(key: key);

  @override
  State<KeranjangScreen> createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'List Belanja',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Divider(),
              //List Keranjang
              Column(
                children: widget.keranjang.map((val) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //kiri
                      Text(
                        '${val['title']}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      //kanan
                      Text('${val['total']} item')
                    ],
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),
              //Button CheckOut
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      //Bagaimana cara hapus list keranjang belanja?
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                    child: const Text('CheckOut')),
              )
            ],
          )),
    );
  }
}
