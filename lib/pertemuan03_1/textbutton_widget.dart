import 'package:flutter/material.dart';

class TextButtonWidget01 extends StatelessWidget {
  const TextButtonWidget01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //kiri
              TextButton(
                  onPressed: () {
                    print('object');
                  },
                  child: const Text('Daftar')),

              //kanan
              GestureDetector(
                onTap: () {
                  print('Hello');
                },
                child: Row(
                  children: [
                    Text('K'),
                    Text('L'),
                    Text('I'),
                    Text('K'),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
