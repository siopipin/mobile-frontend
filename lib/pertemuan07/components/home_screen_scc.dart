import 'package:flutter/material.dart';

class HomeScreenSCC extends StatelessWidget {
  const HomeScreenSCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Home'),
          Image.network(
              'https://play-lh.googleusercontent.com/GO-6o9_oLTeN2IEGn0vbxf1W4eO97KJ3xzSQcoGtZwUueQJmmbr4CUX9KS7WPgr63fkV'),
        ],
      ),
    );
  }
}
