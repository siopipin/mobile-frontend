import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_sc_provider.dart';
import 'package:provider/provider.dart';

class OpsiRadio extends StatelessWidget {
  const OpsiRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertememuan05SCProvider>(context);

    return Radio(
      groupValue: prov.jawaban,
      value: 'Malam',
      onChanged: (val) {
        prov.setJawaban = 'Malam';
      },
    );
  }
}
