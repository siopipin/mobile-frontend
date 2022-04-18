import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04_4/kursi.dart';

class TixIDScreen extends StatefulWidget {
  TixIDScreen({Key? key}) : super(key: key);

  @override
  State<TixIDScreen> createState() => _TixIDScreenState();
}

class _TixIDScreenState extends State<TixIDScreen> {
  bool? isAvailableA1;
  bool? isAvailableA2;

  bool? selectedA1 = false;
  bool? selectedA2 = false;

  int ttl = 0;
  hitungTotal() {
    // berapa kali klik
    ttl += 1;
    return ttl;
  }

  @override
  void initState() {
    isAvailableA1 = true;
    isAvailableA2 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TixID Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            //kursi 1
            Text('ttl: $ttl'),
            Kursi(
              function: () {
                //jika saya klik, maka cek dlu apakah available jika true maka ubah warna ini menjadi warna hijau.

                if (isAvailableA1 == true) {
                  hitungTotal();

                  setState(() {
                    selectedA1 = true;
                    print('selected $selectedA1');
                  });
                }
              },
              title: 'A1',
              color: (isAvailableA1 == true && selectedA1 == false)
                  ? Colors.blue[900]
                  : selectedA1 == true
                      ? Colors.green
                      : Colors.grey,
            ),

            SizedBox(width: 10),

            //kursi 2
            Kursi(
                function: () {
                  print('A2');
                },
                title: 'A2',
                color: isAvailableA2 == true ? Colors.blue[900] : Colors.grey)
          ],
        ),
      ),
    );
  }
}
