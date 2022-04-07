import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/provider/keranjang2_screen.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application/pertemuan04/setstate/components/produk_widget.dart';
import 'package:provider/provider.dart';

class ProdukScreen2 extends StatelessWidget {
  const ProdukScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vicky = context.read<ProdukProvider>();
    final albert = context.watch<ProdukProvider>();
    return Scaffold(
      appBar: AppBar(
          title: Text(context.read<ProdukProvider>().titleScreen),
          actions: [
            Stack(children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Keranjang2())));
                },
              ),

              //keranjang belanja
              Positioned(
                  child: Text(
                albert.keranjang.length.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ))
            ]),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          ProdukWidget(
            namaProduk: 'Tas',
            ctrl: albert.tasCtrl,
            status: albert.isTasAdd,
            press: () {
              print('Tas');
              vicky.setTasStatus = true;
              vicky.isiKeranjang = {
                "title": 'Tas',
                "total": context.read<ProdukProvider>().tasCtrl.text
              };
            },
          ),

          //berhasil jika tas telah ditambah.
          context.watch<ProdukProvider>().isTasAdd == true
              ? Text('Berhasil')
              : Container(),

          context.watch<ProdukProvider>().isTasAdd == true
              ? ElevatedButton(
                  onPressed: () {
                    //Hapus Data array
                    context.read<ProdukProvider>().hapusIsiKerangan();

                    context.read<ProdukProvider>().setTasStatus = false;
                  },
                  child: Text('Hapus'))
              : Container(),

          OutlinedButton(
              onPressed: () {
                context.read<ProdukProvider>().terimaAmplop('50.000');
              },
              child: context.read<ProdukProvider>().kantongDoraemon == ""
                  ? Text('Isi Kantong Doraemon adalah: 0')
                  : Text(context.watch<ProdukProvider>().kantongDoraemon))
        ]),
      ),
    );
  }
}
