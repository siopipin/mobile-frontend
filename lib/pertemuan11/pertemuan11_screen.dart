import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan11/pertemuan11_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan11Screen extends StatefulWidget {
  const Pertemuan11Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan11Screen> createState() => _Pertemuan11ScreenState();
}

class _Pertemuan11ScreenState extends State<Pertemuan11Screen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<Pertemuan11Provider>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan11'),
        actions: [
          menuList(context),
        ],
      ),
      body: body(context),
    );
  }

  menuList(BuildContext context) {
    final prov = Provider.of<Pertemuan11Provider>(context);

    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: ListTile(
              onTap: () => prov.ubahList('hp'),
              leading: const Icon(Icons.phone),
              title: const Text('HP'),
            ),
          ),
          const PopupMenuDivider(),
          PopupMenuItem(
            child: ListTile(
              onTap: () {
                print('laptop');
                prov.ubahList('laptop');
                Navigator.pop(context);
              },
              leading: const Icon(Icons.laptop),
              title: const Text('Laptop'),
            ),
          ),
        ];
      },
    );
  }

  body(BuildContext context) {
    final prov = Provider.of<Pertemuan11Provider>(context);
    if (prov.data == null) {
      return const CircularProgressIndicator();
    } else {
      return ListView(
          children: List.generate(
        prov.data['data']!.length,
        (index) {
          var item = prov.data['data']![index];
          return Column(
            children: [
              ListTile(
                leading:
                    CircleAvatar(backgroundImage: NetworkImage(item['img'])),
                title: Text(item['model']),
              ),
              const Divider()
            ],
          );
        },
      ));
    }
  }
}
