import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application/pertemuan04_4/ketarangan.dart';
import 'package:flutter_application/pertemuan04_4/kursi.dart';
import 'package:provider/provider.dart';

class TixIDProvScreen extends StatelessWidget {
  const TixIDProvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TixID Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                print(val);
                Provider.of<ProdukProvider>(context, listen: false)
                    .setDataText = val;
              },
              decoration: InputDecoration(
                labelText: context.watch<ProdukProvider>().dataText,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<ProdukProvider>().setDataText = '';
                },
                child: Text('Submit')),
            Kerangan()
          ],
        ),
      ),
    );
  }
}
