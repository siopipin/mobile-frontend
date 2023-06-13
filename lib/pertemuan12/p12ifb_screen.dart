import 'package:flutter/material.dart';
import 'package:flutter_application/util/api.dart';

class P12IFBSCreen extends StatefulWidget {
  const P12IFBSCreen({super.key});

  @override
  State<P12IFBSCreen> createState() => _P12IFBSCreenState();
}

class _P12IFBSCreenState extends State<P12IFBSCreen> {
  String? nama;
  String? nim;

  var dataHP;

  // ini anggap punya server yang biasa kita request dan tampil di postman
  final hp = {
    "data": [
      {
        "model": "Samsung Galaxy2",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/I7500_with_screen_protector.jpg/220px-I7500_with_screen_protector.jpg",
        "desc":
            "Samsung Galaxy adalah seri perangkat telepon pintar berbasis Android yang dirancang, diproduksi dan dipasarkan oleh Samsung Electronics.",
        "developer": "Samsung Electronics",
        "price": 2500000,
        "rating": 4.5
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Sony_Xperia_Z.JPG/200px-Sony_Xperia_Z.JPG",
        "desc":
            "Sony Xperia Z merupakan handphone HP dengan kapasitas 2330mAh dan layar 5 yang dilengkapi dengan kamera belakang 13.1MP dengan tingkat densitas piksel sebesar 441ppi dan tampilan resolusi sebesar 1080 x 1920pixels. Dengan berat sebesar 146g, handphone HP ini memiliki prosesor Quad Core. Tanggal rilis untuk Sony Xperia Z: September 2013",
        "developer": "Sony Mobile",
        "price": 1500000,
        "rating": 4.1
      },
    ]
  };

  @override
  void initState() {
    //tunggu data dari server, lalu isi ke variable nama.
    //fungsi untuk inialisasi data
    initialGetData();
    getDataHP();
    super.initState();
  }

  getDataHP() {
    setState(() {
      dataHP = hp;
    });

    print(dataHP);
  }

  initialGetData() async {
    var nameTmp = await Future.delayed(Duration(seconds: 5), () {
      return "budi";
    });

    var nimTmp = await Future.delayed(Duration(seconds: 2), () {
      return "1911129922";
    });

    var kelas = await Future.delayed(Duration(seconds: 2), () {
      return "IF-B Pagi";
    });

    setState(() {
      nama = nameTmp;
      nim = nimTmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
                child: ListTile(
              title: Text(
                nama ?? "tunggu data ...",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nim ?? "-"),
                    Text(dataHP['data'][0]['model'] ?? "-")
                  ]),
            )),
          ],
        ));
  }
}
