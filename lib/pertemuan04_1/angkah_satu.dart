import 'package:flutter/material.dart';

class AngkahSatu extends StatelessWidget {
  int ttl;
  AngkahSatu({Key? key, required this.ttl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text(
        //Gunakan property.
        ttl.toString(),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
