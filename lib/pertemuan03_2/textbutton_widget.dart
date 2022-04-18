import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan03_2/widgets/buttonscc_widget.dart';
import 'package:flutter_application/pertemuan03_2/widgets/textfield_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //field nama
            TextFieldSCC(
              title: 'Alamat',
              icon: Icons.send,
            ),

            //field nim
            TextFieldSCC(
              title: 'Email',
            ),

            TextFieldSCC(
              title: 'Umur',
              icon: Icons.date_range,
            ),

            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(onPressed: () {}, child: Text('Cance')),
                ButtonSCCWidget(judul: 'Edit'),
                ButtonSCCWidget(
                  judul: 'Update',
                )
              ],
            ),

            Row(
              children: [
                TextButton(onPressed: () {}, child: Text('Sio')),
                TextButton(onPressed: () {}, child: Text('194212016'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
