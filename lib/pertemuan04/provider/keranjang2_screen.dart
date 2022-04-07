import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:provider/provider.dart';

class Keranjang2 extends StatelessWidget {
  const Keranjang2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ProdukProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Keranjang'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'List Belanja',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Divider(),
              //List Keranjang
              Column(
                children: provider.keranjang.map((val) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //kiri
                      Text(
                        '${val['title']}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
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
