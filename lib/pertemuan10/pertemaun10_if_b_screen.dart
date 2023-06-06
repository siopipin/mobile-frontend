import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan10/pertemuan10_screen.dart';
import 'package:flutter_application/util/dialog.dart';
import 'package:http/http.dart';

class P10IFBScreen extends StatefulWidget {
  const P10IFBScreen({super.key});

  @override
  State<P10IFBScreen> createState() => _P10IFBScreenState();
}

class _P10IFBScreenState extends State<P10IFBScreen> {
  @override
  void initState() {
    super.initState();
    httpget();
  }

  httpget() {
    // Client client;
    // client.get("url")
    // axio.get()
    // fetch.get()
    Future.delayed(Duration(seconds: 3), () {
      //trigger banner.
      print("Data");
      ScaffoldMessenger.of(context)
          .showMaterialBanner(CustomDialog().banner(context: context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // banner fix
          Container(
              height: 200,
              child: MaterialBanner(
                content: Text("Contoh Banner Fixed"),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Fix me"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Dismiss"),
                  ),
                ],
              )),

          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(CustomDialog()
                    .banner(context: context, title: "Aktifkan kamera!!"));
              },
              child: Text("Login")),

          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text("Enable Location?"),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("deskrips....."),
                          )
                        ],
                      );
                    });
              },
              child: Text("Simpel Dialog")),

          ElevatedButton(
              onPressed: () {
                //alert dialog

                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Enable Location"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Enable"),
                          ),
                          TextButton(
                            onPressed: () async {
                              final datax = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Pertemuan10Screen(
                                      title: null,
                                    ),
                                    fullscreenDialog: true,
                                  ));

                              print("Data dari halaman 10: $datax");
                            },
                            child: Text("Confirm"),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Alert Dialog")),

          ElevatedButton(
              onPressed: () {
                //
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(
                      seconds: 5,
                    ),
                    content: Text("Password tidak boleh kosong")));
              },
              child: Text("Snackbar"))
        ],
      ),
    );
  }

  bannerFix() {
    return MaterialBanner(content: Text("Fix This Prob."), actions: [
      TextButton(onPressed: () {}, child: Text("Fix me")),
      TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
          },
          child: Text("Dismiss"))
    ]);
  }
}
