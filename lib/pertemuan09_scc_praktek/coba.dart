import 'package:flutter/material.dart';

class CobaScreen extends StatelessWidget {
  CobaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: ((context) {
      return ListTile(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    ListTile(title: Text('name'), subtitle: Text('email')),
                  ],
                );
              });
        },
        title: Text('Fachrur'),
        subtitle: Text('201111635@students.mikroskil.ac.id'),
      );
    }));
  }
}
