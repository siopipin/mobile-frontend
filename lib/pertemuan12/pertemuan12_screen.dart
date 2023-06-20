import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan09/profile_screen_test.dart';
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
          shrinkWrap: true,
          children: List.generate(
            prov.data.length,
            (index) {
              var item = prov.data['data']![index];
              return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileTest(
                                title: item['model'],
                                dev: item['developer'],
                              ))),
                  child: Column(
                    children: [
                      Card(
                        // elevation: 0,
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.network(item['img']),
                              title: Text(item['model']),
                              subtitle: Text(
                                item['developer'],
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                item['desc'].toString().length >= 100
                                    ? item['desc']
                                            .toString()
                                            .substring(0, 100) +
                                        "...read more"
                                    : item['desc'],
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
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
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
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
                                        onPressed: () {},
                                        icon: const Icon(Icons.share))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                          child: Column(
                        children: [
                          //header
                          ListTile(
                            title: Text("data"),
                          ),

                          Container(
                            height: 200,
                            width: double.infinity,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image.network(
                                    "https://t-2.tstatic.net/medan/foto/bank/images2/Contoh-gambar.jpg"),
                                SizedBox(width: 10),
                                Image.network(
                                    "https://creatphoto.files.wordpress.com/2012/07/street_by_hotfiresantud4jnp2a.jpg"),
                              ],
                            ),
                          ),

                          //konten

                          ListTile(
                            trailing: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 235, 233, 233)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text("data"),
                      )
                    ],
                  ));
            },
          ));
    }
  }
}
