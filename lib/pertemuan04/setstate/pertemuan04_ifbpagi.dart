import 'package:flutter/material.dart';

class Pertemuan04IFBPagiTeori extends StatelessWidget {
  String nama;
  String keluhan;
  Pertemuan04IFBPagiTeori({
    super.key,
    required this.nama,
    required this.keluhan,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Icon(Icons.people)),
        Column(
          children: [Text(nama), Text(keluhan)],
        )
      ],
    );
  }
}
