import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        onPressed: () {
          print('Hello World');
        },
        child: const Text('TextButton'),
      ),
    );
  }
}
