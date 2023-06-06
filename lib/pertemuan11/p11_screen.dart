import 'package:flutter/material.dart';

class P11Screen extends StatefulWidget {
  const P11Screen({super.key});

  @override
  State<P11Screen> createState() => P11ScreenState();
}

class P11ScreenState extends State<P11Screen> {
  @override
  void initState() {
    // TODO: implement initState
    initialData();
    getNama();
    super.initState();
  }

  String? nama;

  final tmp = {
    'data': [
      {
        "model": "Lenovo Legion",
        "img":
            "https://www.shutterstock.com/image-photo/jakarta-indonesia-saturday-lenovo-gaming-260nw-1572146239.jpg",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": [
          {"review": "Aplikasi bagus", "user": "Andi"},
        ],
        "owner": "sio"
      },
      {
        "model": "Samsung Galaxy",
        "img":
            "https://www.shutterstock.com/image-photo/jakarta-indonesia-saturday-lenovo-gaming-260nw-1572146239.jpg",
        "developer": "Lenovo",
        "price": 12500000,
        "rating": [
          {"review": "Aplikasi bagus", "user": "Andi"},
        ],
        "owner": "sio"
      },
    ]
  };

  initialData() {
    print(tmp['data']![0]['model']);
  }

  getNama() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        nama = "Pipin";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
          child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.builder(
            itemCount: tmp['data']!.length,
            itemBuilder: (context, i) {
              var item = tmp['data']![i];
              return Column(
                children: [
                  Text(
                    item['model'].toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  nama == null ? CircularProgressIndicator() : Text(nama!)
                ],
              );
            }),
      )),
    );
  }
}
