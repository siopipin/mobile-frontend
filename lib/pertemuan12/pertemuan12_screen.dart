import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan12/pertemuan12_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan12Screen extends StatefulWidget {
  const Pertemuan12Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan12Screen> createState() => _Pertemuan12ScreenState();
}

class _Pertemuan12ScreenState extends State<Pertemuan12Screen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<Pertemuan12Provider>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan12'),
        actions: [
          menuList(context),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16.0), child: body(context)),
    );
  }

  menuList(BuildContext context) {
    final prov = Provider.of<Pertemuan12Provider>(context);

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
    final prov = Provider.of<Pertemuan12Provider>(context);

    if (prov.data == null) {
      return const CircularProgressIndicator();
    } else {
      return ListView(
          children: List.generate(
        prov.data.length,
        (index) {
          var item = prov.data['data']![index];
          return GestureDetector(
            onTap: () => print('Ke halaman detail'),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(item['img']),
                    title: Text(item['model']),
                    subtitle: Text(
                      item['developer'],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      item['desc'].toString().length >= 100
                          ? item['desc'].toString().substring(0, 100) +
                              "...read more"
                          : item['desc'],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rp. ${item['price'].toString()},-',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Rating ${item['rating'].toString()}'),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                print('telah disukai');
                              },
                              icon: const Icon(Icons.thumb_up)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.share))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ));
    }
  }
}
