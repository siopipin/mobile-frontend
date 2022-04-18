import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05_2/logic_provider.dart';
import 'package:provider/provider.dart';

class RadioSCCWidget extends StatelessWidget {
  String nilai;
  RadioSCCWidget({Key? key, required this.nilai}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LogicProvider>(context);
    return Row(
      children: [
        Radio(
            value: nilai,
            groupValue: controller.jawaban,
            onChanged: (value) {
              controller.setJawaban = value;
            }),
        Text(nilai)
      ],
    );
  }
}
