import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreenSCC extends StatelessWidget {
  const ProfileScreenSCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text('Profile'),
        CircleAvatar(
          child: Image.asset(
            'assets/twitter_logo.png',
            width: 100,
          ),
        )
      ]),
    );
  }
}
