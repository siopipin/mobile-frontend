import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TanggalTerpilih extends StatefulWidget {
  TanggalTerpilih({Key? key}) : super(key: key);

  @override
  State<TanggalTerpilih> createState() => _TanggalTerpilihState();
}

class _TanggalTerpilihState extends State<TanggalTerpilih> {
  String? _tgl;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Text('Tanggal Terpilih: ${_tgl.toString()}'),
        IconButton(
            onPressed: () async {
              var tgl = await showDatePicker(
                  context: context,
                  initialDate: DateTime.parse("2022-05-21 11:30:20"),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2023));

              if (tgl != null) {
                setState(() {
                  var frtm = DateFormat.QQQ().format(tgl);
                  // _tgl = '${tgl.day}-${tgl.month}-${tgl.year}';
                  _tgl = frtm;
                });
              } else {
                print('Tidak ada tgl terpilih');
                setState(() {
                  _tgl = '-';
                });
              }
            },
            icon: Icon(Icons.date_range_outlined))
      ]),
    );
  }
}
