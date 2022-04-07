import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05_1/ifb_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan051Screen extends StatefulWidget {
  Pertemuan051Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan051Screen> createState() => _Pertemuan051ScreenState();
}

class _Pertemuan051ScreenState extends State<Pertemuan051Screen> {
  //State soal 1;
  bool? soal1a = false;
  bool? soal1b = false;
  bool? soal1c = false;

  bool? soal2 = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<IFBProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Screen Pertemuan05')),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //soal1: CheckBox
          Text('1. Berikut yang merupakan jenis-jenis kendaraan.'),
          Row(
            children: [
              Text('a'),
              Checkbox(
                  value: soal1a,
                  onChanged: (value) {
                    setState(() {
                      soal1a = value;
                    });
                  }),
              Text('Motor')
            ],
          ),
          Row(
            children: [
              Text('b'),
              Checkbox(
                  value: soal1b,
                  onChanged: (value) {
                    setState(() {
                      soal1b = value;
                    });
                  }),
              Text('Mobil')
            ],
          ),
          Row(
            children: [
              Text('c'),
              Checkbox(
                  value: soal1c,
                  onChanged: (value) {
                    setState(() {
                      soal1c = value;
                    });
                  }),
              Text('Pesawat')
            ],
          ),

          //jika opsi a dan b telah terceklis (karena itu adalah jawaban yang sebenarnya), maka akan muncul 1 button untuk menampilkan soal berikutnya.
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: ElevatedButton(
              onPressed: () {
                if (soal1a == true && soal1b == true) {
                  setState(() {
                    soal2 = true;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: (soal1a == true && soal1b == true)
                      ? Colors.purple
                      : Colors.grey),
              child: Text('Lanjut'),
            ),
          ),

          SizedBox(height: 10),

          //soal2
          soal2 == true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Skema desain pembanguan jaringan disebut..'),
                    Row(
                      children: [
                        Text('a'),
                        Radio(
                            value: 'topologi',
                            groupValue: prov.jawabanRadio,
                            onChanged: (val) {
                              //setstate tapi karena saya menggunakan provider maka saya akan set listener.
                              prov.opsiA = val;
                            }),
                        Text('Topologi')
                      ],
                    ),
                    Row(
                      children: [
                        Text('b'),
                        Radio(
                            value: 'desain jaringan',
                            groupValue: prov.jawabanRadio,
                            onChanged: (sio) {
                              print(sio);
                              prov.opsiB = sio;
                            }),
                        Text('Desain Jaringan')
                      ],
                    )
                  ],
                )
              : Container(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //kumpulan data dari chip terpilih.
              Text('Ini adalah kumpulan chip terpilih'),
              Row(
                children: prov.arrHasil.map((e) {
                  return FilterChip(
                      label: Text(e), selected: true, onSelected: (val) {});
                }).toList(),
              )
            ],
          ),

          Column(
              children: prov.arr.map((e) {
            return InputChip(
              label: Text(e),
              selected: false,
              onSelected: (val) {
                prov.tambahkeArray = e;
              },
            );
          }).toList())

          //chip
        ]),
      )),
    );
  }

  kumpulanChips() {
    final prov = Provider.of<IFBProvider>(context);

    for (int i = 0; i < prov.arr.length; i++) {
      return Text(prov.arr[i]);
    }
  }
}
