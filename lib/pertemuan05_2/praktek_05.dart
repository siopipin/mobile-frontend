import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05_2/checkbox_scc.dart';
import 'package:flutter_application/pertemuan05_2/components/checkboxscc.dart';
import 'package:flutter_application/pertemuan05_2/components/chips_model.dart';
import 'package:flutter_application/pertemuan05_2/logic_provider.dart';
import 'package:provider/provider.dart';

class Praktek05Screen extends StatefulWidget {
  Praktek05Screen({Key? key}) : super(key: key);

  @override
  State<Praktek05Screen> createState() => _Praktek05ScreenState();
}

class _Praktek05ScreenState extends State<Praktek05Screen> {
  bool? cb1 = false;
  bool? cb2 = false;
  bool? cb3 = false;
  bool? cb4 = false;
  bool? cb5 = false;

  var arrCheckBox = ['cb1', 'cb2', 'cb3', 'cb4'];

  var ecekecek = {'kota': 'medan'};

  var arrChip = {
    'data': [
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {
        'title': 'soal1',
        'value': 10000,
        'status': true,
        'opsi': [
          {'opsi': 'a', 'nilai': 'mikroskil'},
          {'opsi': 'b', 'nilai': 'mikroskil'},
          {'opsi': 'c', 'nilai': 'mikroskil'},
          {'opsi': 'd', 'nilai': 'mikroskil'},
        ]
      },
      {'title': 'cb2', 'value': 20000, 'status': true},
      {'title': 'cb3', 'value': 30000, 'status': false}
    ]
  };
  int cB1 = 0;

  ChipsModel dataChip = ChipsModel();

  //contoh kopikenangan
  bool? statusKantong = false;
  int? total = 0;

  bool? isSelected = false;

  @override
  void initState() {
    dataChip = ChipsModel.fromJson(arrChip);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<LogicProvider>(context);

    print(ecekecek['kota']);

    arrCheckBox.add('a');

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Column(
            //     children: arrCheckBox.map((val) {
            //   return Checkbox(
            //       value: false,
            //       onChanged: (val) {
            //         print(val);
            //       });
            // }).toList()),

            //Rating dengan CheckBox
            Row(
              children: [
                Checkbox(
                    value: cb1,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        cb1 = val;
                        cB1 += 1;
                        print(cB1);
                      });
                    }),
                Checkbox(
                    value: cb2,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        cb2 = val;
                        cB1 += 1;
                        print(cB1);
                      });
                    }),
                Checkbox(
                    value: cb3,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        cb3 = val;
                        cB1 += 1;
                        print(cB1);
                      });
                    }),
                Checkbox(
                    value: cb4,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        cb4 = val;
                        cB1 += 1;
                        print(cB1);
                      });
                    }),
                Checkbox(
                    value: cb5,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        cb5 = val;
                        cB1 += 1;
                        print(cB1);
                      });
                    }),
              ],
            ),
            //Chip untuk harga

            Row(
              children: dataChip.data!.map((e) {
                return InputChip(
                  label: Text(e.value.toString()),
                  selected: e.status!,
                  onSelected: (val) {
                    print(e.value.toString());
                    if (e.value == 10000) {
                      setState(() {
                        isSelected = true;
                      });
                    }
                  },
                );
              }).toList(),
            ),

            isSelected == true ? Text('Game') : Container(),

            Chip(label: Text('Otomotif \ndan Kendaraan')),

            FilterChip(
                label: Text('sertifikat'),
                avatar: Icon(Icons.abc_outlined),
                onSelected: (val) {}),
            Text('Otomotif \ndan Kendaraan')

            //Button untuk submit
            //Jika rating belum terpilih, maka button tidak bisa diklik.
            ,
            //Checkbox untuk tambah 1000 di pilihan kantong belanja.
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //kiri
                Row(
                  children: [
                    Checkbox(
                        value: statusKantong,
                        onChanged: (val) {
                          setState(() {
                            statusKantong = val;
                            if (statusKantong == true) {
                              total = 1000;
                            } else {
                              total = 0;
                            }
                          });
                        }),
                    Text('Tambah Kantong belanja')
                  ],
                ),

                //kanan
                Text('Rp.1000')
              ],
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('Total:'), Text(total.toString())],
              ),
            )
          ],
        ),
      ),
    );
  }
}
