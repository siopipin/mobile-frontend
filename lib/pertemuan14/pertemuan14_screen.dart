import 'package:flutter/material.dart';

class Pertemuan14Screen extends StatefulWidget {
  const Pertemuan14Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan14Screen> createState() => _Pertemuan14ScreenState();
}

class _Pertemuan14ScreenState extends State<Pertemuan14Screen> {
  DateTime _date = DateTime.now();
  TextEditingController? _time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pertemuan 14')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            //DatePicker
            Row(
              children: [
                const Text('Tanggal:'),
                const SizedBox(width: 10),
                Expanded(
                  child: InputDatePickerFormField(
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
                      var res = await showDatePicker(
                          context: context,
                          initialDate: _date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2500));

                      if (res != null) {
                        setState(() {
                          _date = res;
                        });
                      }
                    },
                    icon: const Icon(Icons.date_range))
              ],
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
                  decoration: const InputDecoration(labelText: 'Jam'),
                )),
                IconButton(
                    onPressed: () async {
                      var res = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());

                      if (res != null) {
                        setState(() {
                          _time =
                              TextEditingController(text: res.format(context));
                        });
                      }
                    },
                    icon: const Icon(Icons.timer))
              ],
            )
          ],
        ),
      ),
    );
  }
}
