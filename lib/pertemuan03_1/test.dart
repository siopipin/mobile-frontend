import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final String jenis;
  final IconData icon;
  const TestWidget({
    Key? key,
    this.icon = Icons.people,
    this.jenis = 'sekolah',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Textfield
        //jika nama
        //maka textfield nama maka memiliki prefixIcon (icons.name)

        //selain itu, suffixIcon: Icon(icons.abc)

        // TextField(
        //   decoration: InputDecoration(
        //     prefixIcon: jenis == 'Isi nama' ? Icon(icon) : null,
        //     suffixIcon: jenis == 'Isi nama' ? null : Icon(Icons.abc_outlined),
        //     border: const OutlineInputBorder(),
        //     hintText: jenis,
        //   ),
        // ),

        if (jenis == 'Isi nama')
          TextField(
            decoration:
                InputDecoration(prefixIcon: Icon(icon), hintText: jenis),
          )
        else
          TextField(
            decoration:
                InputDecoration(suffixIcon: Icon(Icons.abc), hintText: jenis),
          )
      ],
    );
  }
}
