import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            print('hello world');
          },
          child: const Text(
            'ElevatedButton',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.yellow, minimumSize: Size(200, 50)),
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Outline Button'))
      ]),
    );
  }
}
