import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:provider/provider.dart';

class Kerangan extends StatelessWidget {
  const Kerangan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(context.watch<ProdukProvider>().dataText);
  }
}
