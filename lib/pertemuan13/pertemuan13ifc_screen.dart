import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan13/pertemuan13ifc_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan13IFCScreen extends StatefulWidget {
  Pertemuan13IFCScreen({Key? key}) : super(key: key);

  @override
  State<Pertemuan13IFCScreen> createState() => _Pertemuan13IFCScreenState();
}

class _Pertemuan13IFCScreenState extends State<Pertemuan13IFCScreen> {
  double lamawaktu = 0;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13IFCProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('IFC Pagi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prov.wajan == false && prov.cekAirMasak == false
              ? Container()
              : prov.cekAirMasak == true
                  ? CircularProgressIndicator()
                  : ListTile(title: Text('Wajan')),
          if (prov.piring == false && prov.cekMieMasak == false)
            Container()
          else if (prov.cekMieMasak == true)
            CircularProgressIndicator()
          else
            ListTile(title: Text('Piring')),
          Text('Bahan: Mie, Air, dan Bumbu'),
          ElevatedButton(
              onPressed: () async {
                setState(() {
                  lamawaktu = 5;
                });
                var res = await prov.memasakAir();
                if (res == true) {
                  prov.setWajan = true;
                }
                var res2 = await prov.memasakMie();
                if (res2 == true) {
                  prov.setPiring = true;
                }
              },
              child: Text('Mulai Masak')),
          if (lamawaktu == 0)
            Container()
          else
            TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(seconds: 20),
                builder: (context, double time, _) {
                  return LinearProgressIndicator(value: time);
                })
        ],
      ),
    );
  }
}
