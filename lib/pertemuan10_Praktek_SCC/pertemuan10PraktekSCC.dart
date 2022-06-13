import 'package:flutter/material.dart';
import 'package:flutter_application/components/utilitas.dart';

class Pertemuan10SCCPraktek extends StatefulWidget {
  Pertemuan10SCCPraktek({Key? key}) : super(key: key);

  @override
  State<Pertemuan10SCCPraktek> createState() => _Pertemuan10SCCPraktekState();
}

class _Pertemuan10SCCPraktekState extends State<Pertemuan10SCCPraktek> {
  tampilAlertDialog() {
    return AlertDialog(
      title: Text('Yakin ingin hapus file?'),
      content: Text(
          'Dengan menghapus file, maka tidak akan tersedia pada memory lagi.'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel')),
        TextButton(onPressed: () {}, child: Text('Yes')),
      ],
    );
  }

  tampilSimpleDialog() {
    return SimpleDialog(
      title: Text('Pilih Email'),
      children: [
        ListTile(
          onTap: () {
            Navigator.pop(context, 'mail1@gmail.com');
          },
          leading: Icon(Icons.email),
          title: Text('mail1@gmail.com'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context, 'mail2@gmail.com');
          },
          leading: Icon(Icons.email),
          title: Text('mail2@gmail.com'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context, 'mail3@gmail.com');
          },
          leading: Icon(Icons.email),
          title: Text('mail2@gmail.com'),
        )
      ],
    );
  }

  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        //banner
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..removeCurrentMaterialBanner()
                ..showMaterialBanner(tampilBanner(context));
            },
            child: Text('Tampilkan Banner')),

        //dialog
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return tampilAlertDialog();
                      });
                },
                child: Text('AlertDialog')),
            TextButton(
                onPressed: () async {
                  var emailBaru = await showDialog(
                      context: context,
                      builder: (context) {
                        return tampilSimpleDialog();
                      });

                  print(emailBaru);

                  if (emailBaru == null) {
                    setState(() {
                      email = 'Belum Terpilih';
                    });
                  } else {
                    setState(() {
                      email = emailBaru;
                    });
                  }
                },
                child: Text('SimpleDialog')),
            TextButton(onPressed: () {}, child: Text('FullScreeDialog'))
          ],
        ),

        Text('Email Terpilih adalah: $email'),

        //snackbar
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(tampilSnackBar(context, 'Successfully Login!'));
          },
          child: Text('Tampil SnackBar'),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        )
      ]),
    );
  }
}
