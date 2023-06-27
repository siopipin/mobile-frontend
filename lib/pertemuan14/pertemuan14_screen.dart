import 'dart:io';

import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan14/pilihtgllahir.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Pertemuan14Screen extends StatefulWidget {
  const Pertemuan14Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan14Screen> createState() => _Pertemuan14ScreenState();
}

class _Pertemuan14ScreenState extends State<Pertemuan14Screen> {
  DateTime _date = DateTime.now();
  TextEditingController? _time;
  DateTime? tglawal;
  DateTime? tglakhir;

  var tanggalTerpilih;

  XFile? image;

  TextEditingController? ctrlDate;
  @override
  void initState() {
    ctrlDate = TextEditingController(text: "00/00/0000");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pertemuan 14')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            //Latihan datePicker untuk IFC pagi
            TanggalTerpilih(),

            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  showPicker(
                    context: context,
                    value: TimeOfDay(hour: 12, minute: 00),
                    onChange: (time) {
                      print(time.format(context));
                    },
                  ),
                );
              },
              child: Text(
                "Open time picker",
                style: TextStyle(color: Colors.white),
              ),
            ),

            //DatePicker Teori
            Text('Contoh Penggunaan Date Picker'),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  showPicker(
                    context: context,
                    value: TimeOfDay.now(),
                    onChange: (val) {
                      print(val);
                    },
                  ),
                );
              },
              child: Text(
                "Open time picker",
              ),
            ),
            tampilTanggal(),

            //DatePicker
            Row(
              children: [
                const Text('Tanggal Lahir:'),
                const SizedBox(width: 10),
                Expanded(
                  child: InputDatePickerFormField(
                    fieldLabelText: 'mm/dd/yyyy',
                    initialDate: _date,
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2250),
                    onDateSubmitted: (date) {
                      setState(() {
                        _date = date;
                        print(_date);
                      });
                    },
                  ),
                ),
                IconButton(
                    onPressed: () async {
                      var res = await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2500));

                      var data = [];
                      if (res != null) {
                        do {
                          print(res.end.subtract(Duration(days: 1)));
                        } while (res.start.isBefore(res.end));

                        setState(() {
                          tglawal = res.start;
                          tglakhir = res.end;
                        });
                      }
                    },
                    icon: const Icon(Icons.date_range))
              ],
            ),

            ElevatedButton(
                onPressed: () {
                  print("Tanggal Terpilih $_date");
                },
                child: Text("Submit")),

            if (tglakhir != null)
              ListTile(
                title: Text('tgl awal: ${tglawal.toString()}'),
                subtitle: Text('tglakhir' + tglakhir.toString()),
              ),

            ListTile(
              title: const Text('Tanggal terpilih'),
              subtitle: Text(_date.toString()),
            ),
            const Divider(),

            //Time Picker
            Row(
              children: [
                const Text('Jam: '),
                const SizedBox(width: 10),
                Expanded(
                    child: TextField(
                        enabled: false,
                        controller: _time,
                        decoration: const InputDecoration(labelText: 'Jam'))),
                IconButton(
                    onPressed: () async {
                      var res = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      print(res);
                      if (res != null) {
                        setState(() {
                          _time =
                              TextEditingController(text: res.format(context));
                        });
                      }
                    },
                    icon: const Icon(Icons.timer))
              ],
            ),
            Divider(),
            // baris datetimepicker
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  //Text tanggal terpilih
                  Expanded(
                      child: TextField(
                    controller: ctrlDate,
                    onChanged: (val) {
                      setState(() {
                        ctrlDate = TextEditingController(text: val);
                      });
                    },
                  )),
                  //Dialog untuk memilih tanggal
                  IconButton(
                      onPressed: () async {
                        //menampilkan sebuah dialog untuk pilih tanggal
                        var tgl = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2003),
                          lastDate: DateTime(2030),
                        );

                        if (tgl == null) {
                          setState(() {
                            tanggalTerpilih = "tidak ada tanggal terpilh";
                          });
                        } else {
                          setState(() {
                            // cara manual
                            var tmp = '${tgl.day}/${tgl.month}/${tgl.year}';
                            // dengan package intl
                            // var tmp = DateFormat.yMMMMEEEEd().format(tgl);
                            ctrlDate = TextEditingController(text: tmp);
                            tanggalTerpilih = tmp;
                          });
                        }

                        print("Tanggal terpilih: $tgl");
                      },
                      icon: Icon(Icons.date_range_rounded))
                ],
              ),
            ),

            Divider(),

            image == null
                ? Container()
                : Container(
                    width: 100,
                    child: Image.file(
                      File(image!.path),
                      width: 100,
                    )),

            IconButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  var tmpimage =
                      await picker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    image = tmpimage;
                  });

                  print(image?.path);
                },
                icon: Icon(Icons.photo)),

            ElevatedButton(
                onPressed: () {
                  print("Submit : ${ctrlDate?.text}");

                  // simpan tanggal ini ke server.
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }

  tampilTanggal() {
    String tgl = "";
    return Row(
      children: [
        Text(tgl),
        IconButton(
            onPressed: () async {
              var datatgl = await showDatePicker(
                  context: context,
                  initialDate:
                      DateTime(2022, 06, 21).subtract(Duration(days: 1)),
                  firstDate: DateTime.now().subtract(Duration(days: 30)),
                  lastDate: DateTime.now().add(Duration(days: 30)));

              if (datatgl == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tidak boleh null')));
              } else {
                print(datatgl);
              }
            },
            icon: Icon(Icons.date_range))
      ],
    );
  }
}
