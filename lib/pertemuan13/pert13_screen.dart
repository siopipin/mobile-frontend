import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan13/pert13_provider.dart';
import 'package:provider/provider.dart';

class Pert13Screen extends StatefulWidget {
  const Pert13Screen({super.key});

  @override
  State<Pert13Screen> createState() => _Pert13ScreenState();
}

class _Pert13ScreenState extends State<Pert13Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = context.watch<Pert13Provider>();

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          width: double.infinity,
          child: ElevatedButton(
              onPressed: prov.tombolState == TombolInitial.loading
                  ? null
                  : () {
                      prov.getData();
                    },
              child: prov.tombolState == TombolInitial.loading
                  ? Text("loading....")
                  : prov.tombolState == TombolInitial.initial
                      ? Text("mulai")
                      : Text("done")),
        ),
        if (prov.tombolState == TombolInitial.loaded)
          Text("Ada data")
        else if (prov.tombolState == TombolInitial.loading)
          CircularProgressIndicator()
        else
          Container()
      ]),
    );
  }
}
