import 'package:flutter/material.dart';

class About09Screen extends StatelessWidget {
  const About09Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          CircleAvatar(
            child: Image.asset('assets/twitter_logo.png'),
          ),
          Text('About')
        ],
      )),
    );
  }
}
