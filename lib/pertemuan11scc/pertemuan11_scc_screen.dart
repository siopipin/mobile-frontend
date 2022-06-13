import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan11scc/pertemuanscc_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan11SSC extends StatefulWidget {
  Pertemuan11SSC({Key? key}) : super(key: key);

  @override
  State<Pertemuan11SSC> createState() => _Pertemuan11SSCState();
}

class _Pertemuan11SSCState extends State<Pertemuan11SSC> {
  List dataserverapps = ['Lab1', 'Lab2', 'Lab3', 'Lab4'];
  List dataLokal = [];

  @override
  void initState() {
    Future.microtask(() {
      Provider.of<PertemuanSCCProv>(context, listen: false).initialDataYaWeee();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ini hanya inisialisasi agar saya bisa meringkas pemanggilan fungsi di dalam PertemuanSSCProv
    final prov = Provider.of<PertemuanSCCProv>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan11SCC'),
          actions: [
            //popupmenubutton
            PopupMenuButton(itemBuilder: (context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                    child: ListTile(
                  onTap: () {
                    prov.gantiData('hp');
                    // untuk mengubah listnya ke hp
                  },
                  title: Text('HP'),
                )),
                PopupMenuItem(
                    onTap: () {
                      // untuk mengubah list ke laptop
                      prov.gantiData('laptop');
                    },
                    child: ListTile(
                      title: Text('Laptop'),
                    ))
              ];
            })
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration(seconds: 5), () {
              setState(() {
                dataLokal = dataserverapps;
              });
            });
          },
          child: cekDataApakahNull(),
        ));
  }

  cekDataApakahNull() {
    final prov = Provider.of<PertemuanSCCProv>(context);
    if (prov.hpataulaptop == null) {
      print('oii datanya masih null nih, jalankan sesuatu');
      return CircularProgressIndicator();
    } else {
      return ListView(
          children: List.generate(prov.hpataulaptop['data']!.length, (i) {
        var item = prov.hpataulaptop['data'][i];

        return ListTile(
          title: Text(
            item['model'],
          ),
          subtitle: Text(item['developer'].toString().substring(0, 50) + '...'),
        );
      }));
    }
  }
}
