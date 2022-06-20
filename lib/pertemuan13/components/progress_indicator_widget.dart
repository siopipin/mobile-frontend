import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(100, 90)),
        onPressed: () {
          prov.mulaiMemanggang(prov.sliderValue.round());
        },
        child: prov.sedangMemanggang == true
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : const Text('Panggang'));
  }
}
