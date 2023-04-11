import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04teori/pert04_provider.dart';
import 'package:provider/provider.dart';

class Pert05 extends StatefulWidget {
  const Pert05({super.key});

  @override
  State<Pert05> createState() => _Pert05State();
}

class _Pert05State extends State<Pert05> {
  @override
  Widget build(BuildContext context) {
    final prov04 = context.watch<Pert04Provider>();
    return Container(
      child: Text(prov04.nama!),
    );
  }
}
