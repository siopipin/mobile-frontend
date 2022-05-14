import 'package:flutter/material.dart';

class Pertemuan07Body extends StatelessWidget {
  final String title;
  const Pertemuan07Body({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: body(),
    );
  }

  body() {
    if (title == 'Home') {
      return Container(
        child: Column(children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Image.asset('assets/logo.png')
        ]),
      );
    } else if (title == 'Search') {
      return Container(
        child: Column(
            children: List.generate(30, (index) {
          return Text(index.toString());
        })),
      );
    } else {
      return Container(
        child: Column(children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ]),
      );
    }
  }
}
