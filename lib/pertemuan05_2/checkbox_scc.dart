import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05_2/components/radioscc_widget.dart';
import 'package:flutter_application/pertemuan05_2/logic_provider.dart';
import 'package:provider/provider.dart';

class ChecBoxSCC extends StatefulWidget {
  ChecBoxSCC({Key? key}) : super(key: key);

  @override
  State<ChecBoxSCC> createState() => _ChecBoxSCCState();
}

class _ChecBoxSCCState extends State<ChecBoxSCC> {
  bool? isChecked = false;
  String jawaban = '';

  String value = '';

  bool isSelected = false;
  bool isFilterChipSelected = false;

  bool? izinkanPulang = false;
  bool? enableClick = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<LogicProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Checkbox
            Checkbox(
                value: isChecked,
                onChanged: (val) {
                  //atur state
                  print(val);
                  setState(() {
                    isChecked = val;
                  });
                }),

            //CheckBox dengan Provider
            Row(
              children: [
                Checkbox(
                    value: prov.isChecked,
                    checkColor: Colors.yellow,
                    onChanged: (val) {
                      //atur state
                      print(val);
                      value = 'Siang';

                      print(value);
                      prov.setStatusCek = val;
                    }),
                Text('Siang')
              ],
            ),

            //RadioButton

            Radio(
                value: 'samsung',
                groupValue: jawaban,
                onChanged: (nilai) {
                  setState(() {
                    jawaban = nilai.toString();
                  });
                }),
            Radio(
                value: 'nokia',
                groupValue: jawaban,
                onChanged: (nilai) {
                  setState(() {
                    jawaban = nilai.toString();
                  });
                }),

            Divider(),
            Text('Berikut yang merupakan komisaris kelas SC C adalah'),
            RadioSCCWidget(nilai: 'Rickie'),
            RadioSCCWidget(nilai: 'Ardi'),
            RadioSCCWidget(nilai: 'Fisabiluddin'),

            //Chips
            ElevatedButton(onPressed: () {}, child: Text('Sore')),
            ElevatedButton(onPressed: () {}, child: Text('Pagi')),

            InputChip(
              label: Text('Sore'),
              selected: isSelected,
              selectedColor: Colors.green,
              onSelected: (val) {
                setState(() {
                  isSelected = val;
                });
              },
            ),

            FilterChip(
                label: Text('Enable'),
                selected: isFilterChipSelected,
                selectedColor: Colors.blue,
                onSelected: (val) {
                  print(val);
                  setState(() {
                    isFilterChipSelected = val;
                  });
                }),

            isFilterChipSelected == true
                ? Text('Benar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green))
                : Text(
                    'Jawaban masih salah',
                    style: TextStyle(color: Colors.red),
                  ),

            Divider(),

            Row(children: [
              Checkbox(
                  value: izinkanPulang,
                  onChanged: (val) {
                    setState(() {
                      izinkanPulang = val;
                      enableClick = val;
                    });
                  }),
              Text('Sudah bisa selesai meeting?')
            ]),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: enableClick == true ? Colors.purple : Colors.grey),
                onPressed: () {
                  if (enableClick == true) {
                    print('boleh pulang');
                  } else {
                    null;
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
