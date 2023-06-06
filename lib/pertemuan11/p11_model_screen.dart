import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan11/providers/p11_provider.dart';
import 'package:provider/provider.dart';

class P11ModelScreen extends StatefulWidget {
  const P11ModelScreen({super.key});

  @override
  State<P11ModelScreen> createState() => _P11ModelScreenState();
}

class _P11ModelScreenState extends State<P11ModelScreen> {
  @override
  void initState() {
    Future.microtask(() {
      context.read<P11Provider>().getDataServer();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final watchData = context.watch<P11Provider>();
    return Scaffold(
      appBar: AppBar(),
      body: watchData.data.nameEmployee == null
          ? CircularProgressIndicator()
          : ListTile(
              title: Text(watchData.data.nameBank!),
              trailing: PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(watchData.data.nameChild3 ?? "-"))),
                      PopupMenuItem(child: Text("Delete"))
                    ];
                  }),
            ),
    );
  }
}
