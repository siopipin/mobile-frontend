import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/setstate/components/produk_widget.dart';
import 'package:flutter_application/pertemuan04/setstate/keranjang_screen.dart';

class ProdukScreen extends StatefulWidget {
  final String username;
  ProdukScreen({Key? key, required this.username}) : super(key: key);

  @override
  State<ProdukScreen> createState() => _ProdukScreenState();
}

class _ProdukScreenState extends State<ProdukScreen> {
  double defaultPadding = 20;
  String titleScreen = 'List Product';

  TextEditingController sepatuCtrl = TextEditingController();
  TextEditingController tasCtrl = TextEditingController();
  TextEditingController celanaCtrl = TextEditingController();
  TextEditingController bajuCtrl = TextEditingController();

  List<Map<String, String>> keranjang = [];

  bool? isSepatuAdd;
  bool? isCelanaAdd;
  bool? isTasAdd;
  bool? isBajuAdd;

  @override
  void initState() {
    //Default ctrl sepatu
    sepatuCtrl.text = 0.toString();
    tasCtrl.text = 0.toString();
    celanaCtrl.text = 10.toString();
    bajuCtrl.text = 0.toString();

    //Status Baju
    isSepatuAdd = false;
    isCelanaAdd = false;
    isTasAdd = false;
    isBajuAdd = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titleScreen), actions: [
        Stack(children: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // handle the press
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          KeranjangScreen(keranjang: keranjang))));
            },
          ),

          //keranjang belanja
          Positioned(
              child: Text(
            keranjang.length.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ))
        ]),
      ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                //header
                Row(
                  children: [
                    CircleAvatar(
                      child: Text(widget.username.substring(0, 1)),
                    ),
                    SizedBox(width: defaultPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Selamat Datang',
                          style: TextStyle(fontSize: 11, color: Colors.black45),
                        ),
                        Text(
                          widget.username,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1.0),
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(),
                Column(children: [
                  // Untuk kebutuhan data dinamis, level expert: https://stackoverflow.com/questions/50766139/flutter-create-dynamic-number-of-texteditingcontrollers

                  // contoh produk statik dengan textediting statik.
                  ProdukWidget(
                    namaProduk: 'Sepatu',
                    ctrl: sepatuCtrl,
                    status: isSepatuAdd,
                    press: () {
                      print('sepatu');
                      setState(() {
                        isSepatuAdd = true;
                        keranjang
                            .add({"title": 'Sepatu', "total": sepatuCtrl.text});
                      });
                    },
                  ),
                  ProdukWidget(
                    namaProduk: 'Celana',
                    ctrl: celanaCtrl,
                    status: isCelanaAdd,
                    press: () {
                      print('Celana');
                      setState(() {
                        isCelanaAdd = true;
                        keranjang
                            .add({"title": 'Celana', "total": celanaCtrl.text});
                      });
                    },
                  ),
                  ProdukWidget(
                    namaProduk: 'Tas',
                    ctrl: tasCtrl,
                    status: isTasAdd,
                    press: () {
                      print('Tas');
                      setState(() {
                        isTasAdd = true;
                        keranjang.add({"title": 'Tas', "total": tasCtrl.text});
                      });
                    },
                  ),
                  ProdukWidget(
                    namaProduk: 'Baju',
                    ctrl: bajuCtrl,
                    status: isBajuAdd,
                    press: () {
                      print('Baju');
                      setState(() {
                        isBajuAdd = true;
                        keranjang
                            .add({"title": 'Baju', "total": bajuCtrl.text});
                      });
                    },
                  ),
                ])
              ],
            )),
      )),
    );
  }
}
