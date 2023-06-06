import 'package:flutter/material.dart';

class P7Profile extends StatelessWidget {
  const P7Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(color: Colors.blue),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.people),
        ),
        title: Text("William"),
        subtitle: Text("IF - B Pagi"),
      ),
    );
  }
}
