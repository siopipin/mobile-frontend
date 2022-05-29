import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  final String title;
  const InboxScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text(title)),
    );
  }
}
