import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan03_1/test.dart';

class ElevatedButtonWidget01 extends StatelessWidget {
  const ElevatedButtonWidget01({Key? key}) : super(key: key);
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //atas
            ElevatedButton(onPressed: () {}, child: Text('data')),

            //bawah
            OutlinedButton(onPressed: () {}, child: Text('data')),

            //Punya Edwin
            TestWidget(jenis: "Isi nama", icon: Icons.abc),
            TestWidget(jenis: "Isi Umur"),
            TestWidget(jenis: "Isi HP"),
            TestWidget(),

            //Buton
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {}, child: Text('data'))),
                  SizedBox(width: 20),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Submit')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
