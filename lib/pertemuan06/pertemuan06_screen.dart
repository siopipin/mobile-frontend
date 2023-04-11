import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan06/pertemuan06_model.dart';
import 'package:flutter_application/pertemuan06/pertemuan06_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan06Screen extends StatefulWidget {
  Pertemuan06Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan06Screen> createState() => _Pertemuan06ScreenState();
}

class _Pertemuan06ScreenState extends State<Pertemuan06Screen> {
  //State untuk switch SC C pagi
  bool? isWifiActive = false;
  String mhs = 'Pilih mhs';
  List daftarmhs = [];

  var mahasiswa = [
    'Pilih mhs',
    'Adji perdana kusuma',
    'Adreas Tulus',
    'Cherchen',
    'Dean Joshua',
    'Erika Rhulina Lumban Gaol',
    'Sikenni Jaya',
    'Indra Gunawan Gulo'
  ];

  //Kelas SCC Praktek Sore
  String pilihanLaptop = '';
  List laptop = [
    'asus',
    'ROG',
    'lenovo',
    'acer',
    'thochiba',
    'alienware',
    'dell',
    'HP',
    ''
  ];

  //List Item
  String itemSelected = 'Pilih Pekerjaan';
  List items = [
    'Pilih Pekerjaan',
    'Mahasiswa',
    'Dosen',
    'Programmer',
    'UI UX Desainner',
    'IT Consultan',
    'Project Manager',
    'PNS',
    'Wiraswasta'
  ];

  List kalender = ['januari', 'february', 'maret'];
  String value = 'januari';

  var data2 = {
    "todos": [
      {"id": "2", "title": "judul2", "desc": "deskr ipsi2", "status": false},
      {"id": "3", "title": "judul3", "desc": "deskripsi", "status": true}
    ]
  };

  TodosModel dataTodo = TodosModel();

  @override
  void initState() {
    dataTodo = TodosModel.fromJson(data2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan06Provider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Switches | DropdownB.')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // //Dropdown
            // DropdownButton(
            //     items: kalender.map((item) {
            //       return DropdownMenuItem(
            //         child: Text(item),
            //         value: item,
            //       );
            //     }).toList(),
            //     value: value,
            //     onChanged: (val) {
            //       print(val);
            //       setState(() {
            //         value = val as String;
            //       });
            //     }),

            //Switch
            GestureDetector(
              onLongPress: () {
                print("Sedang tap");
              },
              child: Text(
                "Klik saya",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                "Klik saya",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark mode theme'),
                Switch(
                    value: prov.enableDarkMode,
                    activeColor: Colors.green,
                    onChanged: (val) {
                      print(val);
                      prov.setBrightness = val;
                    })
              ],
            ),

            //DropdownButton
            if (prov.enableDarkMode == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Pekerjaan'),
                  DropdownButton(
                    items: items.map((item) {
                      return DropdownMenuItem(
                        child: Row(children: [Icon(Icons.ac_unit), Text(item)]),
                        value: item,
                      );
                    }).toList(),
                    value: itemSelected,
                    onChanged: (val) {
                      setState(() {
                        itemSelected = val as String;
                      });
                    },
                  )
                ],
              )
            else
              Container(),

            for (var i = 0; i < items.length; i++) Text(items[i]),

            itemSelected == 'Pilih Pekerjaan'
                ? Text('Pekerjaan belum dipilih')
                : Text('Pekerjaan: $itemSelected'),

            Divider(),

            Switch(
                value: true,
                activeColor: Colors.red,
                onChanged: (val) {
                  print(val);
                }),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Aktifkan Wifi',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Silahkan aktifkan agar bisa menggunakan wifi',
                    style: TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ]),
                Switch(value: false, onChanged: (val) {})
              ],
            ),

            SwitchListTile(
                title: Text('Aktifkan Wifi'),
                subtitle: Text('Silahkan turn on agar wifi aktif'),
                value: isWifiActive!,
                onChanged: (val) {
                  print(val);
                  setState(() {
                    isWifiActive = val;
                  });
                }),

            if (isWifiActive == true)
              Image.asset(
                'assets/logo.png',
                width: 150,
              )
            else
              Container(),

            Divider(),

            Row(
              children: [
                Icon(Icons.people),
                Text('Pilih: '),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: DropdownButtonFormField(
                      items: mahasiswa.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      value: mhs,
                      onChanged: (val) {
                        print(val);
                        daftarmhs.add(val);
                        setState(() {
                          mhs = val as String;
                        });
                      }),
                )
              ],
            ),

            Divider(),
            Switch(
                value: prov.isActive,
                onChanged: (val) {
                  print(val);
                  prov.setIsActive = val;
                }),

            DropdownButton(
                items: laptop.map((item) {
                  //return sebuah DropdownmenuItem()
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item,
                  );
                }).toList(),
                value: pilihanLaptop,
                onChanged: (val) {
                  print(val);
                  setState(() {
                    pilihanLaptop = val as String;
                  });
                })
          ],
        ),
      ),
    );
  }
}
