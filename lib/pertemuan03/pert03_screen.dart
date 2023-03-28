import 'package:flutter/material.dart';

class Pertemuan03ScreenTeori extends StatefulWidget {
  const Pertemuan03ScreenTeori({super.key});

  @override
  State<Pertemuan03ScreenTeori> createState() => _Pertemuan03ScreenTeoriState();
}

class _Pertemuan03ScreenTeoriState extends State<Pertemuan03ScreenTeori> {
  TextEditingController ctrlWillyPieter = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  bool boolPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //text
              Text('Simpan Akun'),

              // textfield
              TextField(
                controller: ctrlWillyPieter,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people),
                  suffixIcon: Icon(Icons.save),
                  label: Text("Isi Nama"),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                controller: ctrlPassword,
                decoration: InputDecoration(
                  helperText: "isi password dengan kombinasi angkah-abjad",
                  errorText: boolPassword ? "" : "Tidak boleh kosong",
                  prefixIcon: Icon(Icons.people),
                  suffixIcon: Icon(Icons.save),
                  label: Text("Isi Password"),
                  border: OutlineInputBorder(),
                ),
              ),

              // button letaknya disebelah kanan.
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      if (ctrlPassword.text.isNotEmpty &&
                          ctrlWillyPieter.text.isNotEmpty) {
                        print("Fungsi login");
                      } else {
                        print("Isian tidak boleh kosong!");
                      }
                    },
                    child: Text("Simpan")),
              ),

              //anak 1
              Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // kiri
                        Text("Simpan ke Bookmark"),

                        // kanan
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 0,
                            ),
                            onPressed: () {
                              print("hallo ini button");
                            },
                            child: Text("Simpan"))
                      ])),

              //anak 2
              Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // kiri
                        Text("Simpan Akun"),

                        // kanan
                        FilledButton(
                            onPressed: () {
                              print("hallo ini button");
                            },
                            child: Text("Simpan"))
                      ])),

              //anak 3
              Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // kiri
                        Text("Outlined button"),

                        // kanan
                        OutlinedButton(
                            onPressed: () {
                              print("hallo ini button");
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                // If the button is pressed, return green, otherwise blue
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.green;
                                }
                                return Colors.blue;
                              }),
                            ),
                            child: Text("Simpan"))
                      ])),

              //anak 4
              Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // kiri
                        Text("Outlined button"),

                        // kanan
                        IconButton(
                            onPressed: () {
                              print("ini icon button");
                            },
                            icon: Icon(
                              Icons.thumb_up,
                              color: Colors.blue,
                            ))
                      ])),
            ],
          ),
        ));
  }
}
