import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05/pertemuan05_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan05Screen extends StatefulWidget {
  Pertemuan05Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan05Screen> createState() => _Pertemuan05ScreenState();
}

class _Pertemuan05ScreenState extends State<Pertemuan05Screen> {
  //Status soal 1
  bool? soal1a = false;
  bool? soal1b = false;

  //Status soal 2
  String soal2 = 'answ';

  //Status pilih kelas
  bool kelasPagi = false;
  bool kelasSiang = false;

  //status filterchips
  //sekolah
  bool statusChipSekolah = false;

  int x = 0;

  @override
  Widget build(BuildContext context) {
    // class ini menggunakan provider Pertemuan05Provider
    final prov = Provider.of<Pertemuan05Provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 05'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // a + b = x // x disini kosong.
                Row(
                  children: [
                    Text("A"),
                    Text("+"),
                    Text("B"),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            x = 10 + 5;
                          });
                        },
                        child: Text("=")),
                    Text(x.toString())
                  ],
                ),

                //Soal 1: Menggunakan Checkbox
                const Text(
                    '1. Memori yang berfungsi untuk tempat penyimpanan data sementara disebut..'),
                Row(
                  children: [
                    Text('a.'),
                    SizedBox(width: 5),
                    Checkbox(
                      value: soal1a,
                      onChanged: (val) {
                        print(val);
                        setState(() {
                          soal1a = val;
                        });
                      },
                    ),
                    Text('RAM'),
                  ],
                ),
                Row(
                  children: [
                    Text('b.'),
                    SizedBox(width: 5),
                    Checkbox(
                      value: soal1b,
                      onChanged: (val) {
                        setState(() {
                          soal1b = val;
                        });
                      },
                    ),
                    Text('Random Access Memory'),
                  ],
                ),

                //Respon jawaban soal1
                if (soal1a == false && soal1b == false)
                  Container()
                else if (soal1a == true && soal1b == true)
                  const Text(
                    'Benar!',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                else
                  const Text(
                    'Jawaban masih salah, coba lagi',
                    style: TextStyle(color: Colors.red),
                  ),

                const Divider(),
                //Soal 2: Menggunakan Radio Button
                const Text('2.Skema desain pembangunan jaringan disebut..'),
                Row(
                  children: [
                    Text('a.'),
                    SizedBox(width: 5),
                    Radio(
                      value: 'topologi__',
                      groupValue: soal2,
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'topologi__';
                        });
                      },
                    ),
                    Text('Topologi'),
                  ],
                ),
                Row(
                  children: [
                    Text('b.'),
                    SizedBox(width: 5),
                    Radio(
                      groupValue: soal2,
                      value: 'desain jaringan',
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'desain jaringan';
                        });
                      },
                    ),
                    Text('Desain Jaringan'),
                  ],
                ),

                //CheckJawaban
                if (soal2 == 'answ')
                  Container()
                else if (soal2 == 'topologi__')
                  const Text(
                    'Benar!',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                else
                  const Text(
                    'Jawaban masih salah, coba lagi',
                    style: TextStyle(color: Colors.red),
                  ),
                //Chips
                //ChoiceChip
                const Divider(),
                const Text('Feedback Soal',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('Kelas'),
                Row(
                  children: [
                    ChoiceChip(
                      label: Text('Pagi'),
                      selectedColor: Colors.blue[200],
                      selected: kelasPagi,
                      onSelected: (val) {
                        setState(() {
                          kelasPagi = val;
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    ChoiceChip(
                      label: Text('Siang'),
                      selectedColor: Colors.blue[200],
                      selected: kelasSiang,
                      onSelected: (val) {
                        setState(() {
                          kelasSiang = val;
                        });
                      },
                    ),
                  ],
                ),
                const Text('Soal di atas telah dipelajari saat?..'),
                Row(
                  children: [
                    FilterChip(
                      label: Text('Sekolah'),
                      //Atur color disini
                      selectedColor: Colors.blue[200],
                      selected: statusChipSekolah,
                      onSelected: (val) {
                        print(val);
                        setState(() {
                          statusChipSekolah = val;
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: Text('Praktikum'),
                      selected: prov.statusPraktik,
                      onSelected: (val) {
                        prov.setPraktik = val;
                      },
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: Text('Kursus'),
                      selected: prov.statusKursus,
                      onSelected: (val) {
                        prov.setKursus = val;
                      },
                    ),
                  ],
                ),

                //InputChip
                const Text('Peminatan saat sekolah?'),
                Container(
                  child: Row(
                    children: [
                      Container(),
                      // letakkan chip terpilih disini!
                      // atur state menggunakan setState atau Provider
                    ],
                  ),
                ),
                Row(
                  children: [
                    InputChip(
                      label: Text('TKJ'),
                      onSelected: (val) {
                        print(val);
                        //atur state menggunakan setState atau Provider
                      },
                    ),
                    SizedBox(width: 5),
                    InputChip(
                      label: Text('RPL'),
                      onSelected: (val) {
                        print(val);
                        //atur state menggunakan setState atau Provider
                      },
                    ),
                    SizedBox(width: 5),
                    InputChip(
                      label: Text('SMA'),
                      onSelected: (val) {
                        print(val);
                        //atur state menggunakan setState atau Provider
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
