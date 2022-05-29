import 'package:flutter/material.dart';

class DataBaruScreen extends StatelessWidget {
  const DataBaruScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Builder(builder: ((context) {
            return ListTile(
              onTap: () {
                tampilModal(
                    context, 'Fachrur', '201111635@students.mikroskil.ac.id');
              },
              title: Text('Fachrur'),
              subtitle: Text('201111635@students.mikroskil.ac.id'),
            );
          })),
        ],
      ),
    );
  }

  tampilModal(BuildContext context, String name, String email) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              ListTile(title: Text(name), subtitle: Text(email)),
            ],
          );
        });
  }
}
