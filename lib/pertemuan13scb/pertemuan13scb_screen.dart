import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan13scb/pertemuan13scb_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan13ScbScreen extends StatefulWidget {
  Pertemuan13ScbScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan13ScbScreen> createState() => _Pertemuan13ScbScreenState();
}

class _Pertemuan13ScbScreenState extends State<Pertemuan13ScbScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13SCBProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pert. 13'),
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.chair_alt_sharp),
          title: Text(prov.bahan1),
          subtitle: Text('Bahan1'),
        ),
        Tooltip(
          message: prov.bahan2,
          child: ListTile(
            leading: Icon(Icons.chair_alt_sharp),
            title: Text(prov.bahan2),
            subtitle: Text('Bahan2'),
          ),
        ),
        FutureBuilder(
            future: prov.testAsynFunc(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return Image.network(
                    'http://www.meeteat.org/wp-content/uploads/2021/08/images_daging_ayam-goreng-1200x720.jpg');
              }
            })),
        Row(
          children: [
            Text('\tWaktu: ${prov.lamaMenggoreng.round()}'),
            Expanded(
                child: Slider(
                    value: prov.lamaMenggoreng,
                    divisions: 10,
                    min: 0,
                    max: 10,
                    onChanged: (val) {
                      prov.setInfoLamaMenggoreng = val;
                      print(val);
                    }))
          ],
        ),
        ElevatedButton(
            onPressed: () {
              prov.memasakAyamGoreng();
            },
            child: Text('Mulai Memasak')),
        Divider(),
        prov.infoAyamPadaPiring == true
            ? Image.network(
                'http://www.meeteat.org/wp-content/uploads/2021/08/images_daging_ayam-goreng-1200x720.jpg')
            : prov.infokanapakahsedangmemasak == true
                ? TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration:
                        Duration(seconds: prov.infolamamenggoreng.round()),
                    builder: (context, double t, _) {
                      return CircularProgressIndicator(value: t);
                    })
                : Image.network(
                    'https://www.islampos.com/wp-content/uploads/2017/07/piring-sendok-garpu-puasa.jpg')
      ]),
    );
  }
}
