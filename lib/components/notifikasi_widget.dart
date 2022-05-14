import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan07/pertemuan07_provider.dart';
import 'package:provider/provider.dart';

class NotifikasiWidget extends StatelessWidget {
  const NotifikasiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan07Provider>(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        const Icon(Icons.notifications),
        Positioned(
            top: 10,
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              child: Text(
                prov.ttlNotif.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ))
      ],
    );
  }
}
