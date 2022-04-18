import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';

class Pertemuan02DetailScreen extends StatelessWidget {
  const Pertemuan02DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.list),
      ),
      body: Stack(
        children: [
          Icon(
            Icons.notification_important_rounded,
            size: 100,
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                width: 50,
                height: 50,
                child: Center(
                    child: Text(
                  '99',
                )),
              )),
        ],
      ),
    );
  }
}
