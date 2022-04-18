import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05/opsiRadio.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_provider.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_sc_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan05SC extends StatefulWidget {
  Pertemuan05SC({Key? key}) : super(key: key);

  @override
  State<Pertemuan05SC> createState() => _Pertemuan05SCState();
}

class _Pertemuan05SCState extends State<Pertemuan05SC> {
  //Provide state
  bool? isCheck;

  bool isChip = false;

  String answ = 'sianghari';

  @override
  void initState() {
    //Initialisasi State
    isCheck = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertememuan05SCProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //ini versi setState()
          Checkbox(
            value: isCheck,
            onChanged: (val) {
              setState(() {
                isCheck = val;
              });
            },
          ),

          //versi Provider
          Checkbox(
            value: prov.isCheck,
            onChanged: (val) {
              prov.setIsCheck = val;
            },
          ),

          //RadioButton
          // State Radio akan berubah ketika grupValue memiliki nilai yang sama dengan Value.
          SizedBox(height: 20),
          Text('Siang hari itu ditandai dengan langit berwarna?'),

          //setState()
          Row(
            children: [
              Text('a'),
              Radio(
                groupValue: answ,
                value: 'Pagi',
                onChanged: (val) {
                  setState(() {
                    answ = 'Pagi';
                  });
                },
              ),
            ],
          ),
          Row(
            //Provider
            children: [
              Text('b'),
              Radio(
                groupValue: prov.jawaban,
                value: 'Malam',
                onChanged: (val) {
                  prov.setJawaban = 'Malam';
                },
              ),
              OpsiRadio()
            ],
          ),

          //setState()
          FilterChip(
              label: Text('Sekolah'),
              selected: isChip,
              selectedColor: Colors.blue,
              onSelected: (val) {
                setState(() {
                  isChip = val;
                });
              }),

          //Contoh dengan Provider()
          FilterChip(
              label: Text('Rumah'),
              selected: prov.statusChip,
              onSelected: (val) {
                prov.setStatusChip = val;
              })
        ]),
      ),
    );
  }
}
