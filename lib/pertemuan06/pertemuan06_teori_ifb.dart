import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan06/pertemuan06teori_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan06TeoriIFB extends StatefulWidget {
  const Pertemuan06TeoriIFB({super.key});

  @override
  State<Pertemuan06TeoriIFB> createState() => _Pertemuan06TeoriIFBState();
}

class _Pertemuan06TeoriIFBState extends State<Pertemuan06TeoriIFB> {
  bool status = false;
  String item = "Medan";

  @override
  Widget build(BuildContext context) {
    final logic = context.watch<Pertemuan06TeoriProvider>();

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        //switch dengan setState
        SwitchListTile(
          value: status,
          secondary: Icon(Icons.wifi),
          title: Text("Wifi"),
          subtitle: Text("Berfungsi untuk mengaktifkan wifi"),
          onChanged: (val) {
            print(val);
            setState(() {
              status = val;
            });
          },
        ),

        //switch dengan provider.
        SwitchListTile(
          value: logic.dataStatus,
          secondary: Icon(Icons.wifi),
          title: Text("Wifi provider"),
          subtitle: Text("Berfungsi untuk mengaktifkan wifi"),
          onChanged: (val) {
            logic.setStatus = val;
          },
        ),

        //switch dengan provider.
        SwitchListTile(
          value: logic.statusBt(),
          secondary: Icon(Icons.wifi),
          title: Text("Bluetoth provider"),
          subtitle: Text("Berfungsi untuk mengaktifkan wifi"),
          onChanged: (val) {
            logic.setStatusBT('budi', val);
          },
        ),

        //switch dengan provider.
        SwitchListTile(
          value: logic.dataStatusPesawat,
          secondary: Icon(Icons.wifi),
          title: Text("Mode Pesawat"),
          subtitle: Text("Berfungsi untuk mengaktifkan Mode pesawat"),
          onChanged: (val) {
            logic.setDataStatusPesawat = val;
          },
        ),

        Divider(),
        Expanded(
          child: DropdownButton(
              value: item,
              items: [
                DropdownMenuItem(
                  child: Container(
                    height: 80,
                    width: 80,
                    child: TextField(
                        decoration: InputDecoration(label: Text("Cari Kota"))),
                  ),
                  value: "Pilih kota",
                ),
                DropdownMenuItem(
                  child: Text("Medan"),
                  value: "Medan",
                ),
                DropdownMenuItem(
                  child: Text("Sibolga"),
                  value: "Sibolga",
                ),
              ],
              onChanged: (val) {
                setState(() {
                  item = val.toString();
                });
              }),
        ),
        Divider(),
        Expanded(
          child: DropdownButton(
              menuMaxHeight: 200,
              value: logic.dataItem,
              items: logic.mahasiswa.map((item) {
                if (logic.mahasiswa.length > 0) {
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item.toString(),
                  );
                } else {
                  return DropdownMenuItem(
                    child: Text("Tidak ada data"),
                    value: item.toString(),
                  );
                }
              }).toList(),
              onChanged: (val) {
                logic.setDataItem = val;
              }),
        )
      ]),
    );
  }
}
