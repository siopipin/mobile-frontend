import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan10/components/fullscreen_dialog_widget.dart';

class Pertemuan10Screen extends StatefulWidget {
  final String? title;
  const Pertemuan10Screen({Key? key, required this.title}) : super(key: key);

  @override
  State<Pertemuan10Screen> createState() => _Pertemuan10ScreenState();
}

class _Pertemuan10ScreenState extends State<Pertemuan10Screen> {
  var snakeBar = SnackBar(content: Text('data'));
  var tampildialog = MaterialBanner(content: Text('Data'), actions: []);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "Title"),
        elevation: 4,
      ),
      body: Column(children: [
        MaterialBanner(content: Text('Hallo IF-B Pagi'), actions: [
          TextButton(
              onPressed: () {
                int a = 1;
                var hasil = a * 10;
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(tampilkanBanner(b: hasil.toString()));
              },
              child: Text('Dismiss'))
        ]),
        const SizedBox(height: 16),

        //Banner maka gunakan materialBanner

        MaterialBanner(
            content: Text('Kartu Kredit expired, segera update CC'),
            actions: [
              TextButton(
                  onPressed: () => ScaffoldMessenger.of(context)
                      .showMaterialBanner(showBanner(context, "data")),
                  child: Text('data'))
            ]),

        MaterialBanner(
            content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Banner',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'A banner displays an important, succinct message, and provides actions for users to address (or dismiss the banner). It requires a user action to be dismissed.')
                ]),
            actions: [
              TextButton(
                  onPressed: () => ScaffoldMessenger.of(context)
                    ..removeCurrentMaterialBanner()
                    ..showMaterialBanner(showBanner(context, "data")),
                  child: const Text('Show Banner'))
            ]),
        const Divider(),

        //picuh dialog.

        MaterialBanner(
            content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Dialogs',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Dialogs inform users about a task and can contain critical information, require decisions, or involve multiple tasks.')
                ]),
            actions: [
              TextButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) {
                        return tampilAlertDialog(context);
                      }),
                  child: const Text('Alert Dialog')),
              TextButton(
                  onPressed: () async {
                    var data = await showDialog(
                        context: context,
                        builder: (context) {
                          var data = showSimpleDialog(context);
                          print(data);
                          return data;
                        });
                    print(data);
                  },
                  child: const Text('Simple Dialog')),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: ((context) => FullScreenDialog()))),
                  child: const Text('Fullscreen Dialog'))
            ]),
        Divider(),
        MaterialBanner(
            content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Snackbars',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Snackbars provide brief messages about app processes at the bottom of the screen.')
                ]),
            actions: [
              TextButton(
                  child: const Text('Snackbar'),
                  onPressed: () =>
                      ScaffoldMessenger.of(context).showSnackBar(snakeBar))
            ]),

        // button untuk pop
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "dialog");
            },
            child: Text("Confirm"))
      ]),
    );
  }

  tampilkanBanner({String? a, required String b}) {
    print('Hallo ini adalah fungsi untuk tampil banner : $a');

    return MaterialBanner(content: Text('Hallo IF-B Pagi'), actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context, "Data P10");
          },
          child: Text('Dismiss'))
    ]);
  }

  showBanner(BuildContext context, String data) {
    return MaterialBanner(
        content: Text('Welcome $data'),
        leading: const Icon(
          Icons.info,
          color: Colors.orange,
        ),
        actions: [
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(showSnackBar(context, data));
              },
              child: const Text('Update')),
          TextButton(
              onPressed: () =>
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
              child: const Text('Dismiss'))
        ]);
  }

  tampilAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Reset settings?'),
      content: Container(
          height: 350,
          child: Column(
            children: List.generate(4, (index) => Text('data $index')),
          )),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context)
              ..removeCurrentMaterialBanner()
              ..showMaterialBanner(showBanner(context, "IF B Pagi"));
          },
          child: Text('ACCEPT'),
        ),
      ],
    );
  }

  showSimpleDialog(BuildContext context) {
    return SimpleDialog(
      title: const Text('Set backup account'),
      children: [
        ListTile(
          title: Text('data'),
        )
      ],
    );
  }

  showSnackBar(BuildContext context, String data) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 3),
      content: Text('Welcome to snackbar dengan data $data'),
      action: SnackBarAction(
        label: 'Dismiss',
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        },
      ),
    );
  }
}
