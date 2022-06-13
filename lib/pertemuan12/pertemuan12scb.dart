import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan12/pert12prov.dart';
import 'package:provider/provider.dart';

class Pertemuan12scB extends StatefulWidget {
  Pertemuan12scB({Key? key}) : super(key: key);

  @override
  State<Pertemuan12scB> createState() => _Pertemuan12scBState();
}

class _Pertemuan12scBState extends State<Pertemuan12scB> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pert12Prov>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: List.generate(prov.databarang2['data'].length, (index) {
          return Card(
            child: Column(children: [
              ListTile(
                title: Text(prov.databarang['data']![0]['merek'].toString()),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('data'),
              ),
              ButtonBar(
                children: [TextButton(onPressed: () {}, child: Text('data'))],
              )
            ]),
          );
        }),
      ),
    );
  }
}
