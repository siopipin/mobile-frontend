import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan05_2/logic_provider.dart';
import 'package:provider/provider.dart';

class CheckBoxSCCPraktek extends StatelessWidget {
  final bool? value;
  final VoidCallback onChange;
  const CheckBoxSCCPraktek(
      {Key? key, @required this.value, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<LogicProvider>(context);
    return Checkbox(
        value: value,
        onChanged: (val) {
          onChange;
        });
  }
}
