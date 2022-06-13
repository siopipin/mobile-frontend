import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_provider.dart';
import 'package:flutter_application/pertemuan11_praktek/pertemuan11praktek_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan11PraktekScreen extends StatefulWidget {
  Pertemuan11PraktekScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan11PraktekScreen> createState() =>
      _Pertemuan11PraktekScreenState();
}

class _Pertemuan11PraktekScreenState extends State<Pertemuan11PraktekScreen> {
  List dataDariServer = ['Samsung', 'Nokia', 'Iphone'];
  List dataBaru = ['Lenovo', 'Acer', 'Macbook'];

  //Dari dari server atau data baru akan saya simpan pada sebuah penampung yaitu DATA;
  List data = [];

  @override
  void initState() {
    Future.microtask(() {
      Provider.of<Pertemuan11PraktekProvider>(context, listen: false)
          .initialisasiData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan11PraktekProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan11'),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                  child: ListTile(
                onTap: (() => prov.gantiData('laptop')),
                title: Text('Laptop'),
              )),
              PopupMenuDivider(),
              PopupMenuItem(
                  child: ListTile(
                onTap: () => prov.gantiData('hp'),
                title: Text('HP'),
              )),
              PopupMenuItem(
                  child: ListTile(
                onTap: () => prov.gantiData('kucing'),
                title: Text('Kucing'),
              )),
            ];
          })
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          print('Sedang memuat.....');
          setState(() {
            data = dataBaru;
          });
          //fungsi untuk fech data ke server. Lalu data yang berhasil di load, bisa ditampilkan pada list.
        },
        child: cekDataListView(),
      ),
    );
  }

  cekDataListView() {
    final prov = Provider.of<Pertemuan11PraktekProvider>(context);
    if (prov.database == null) {
      print('Mula-mula data kosong');
      return CircularProgressIndicator();
    } else {
      return ListView(
        children: List.generate(prov.database['data']!.length, (index) {
          //lakukan proses untuk ringkas kode
          var item = prov.database['data'][index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item['img']),
            ),
            title: Text(item['model']),
          );
        }),
      );
    }
  }
}
