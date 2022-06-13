import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan13/components/content_widget.dart';
import 'package:flutter_application/pertemuan13/components/progress_indicator_widget.dart';
import 'package:flutter_application/pertemuan13/components/slider_widget.dart';
import 'package:flutter_application/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan13Screen extends StatefulWidget {
  Pertemuan13Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan13Screen> createState() => _Pertemuan13ScreenState();
}

class _Pertemuan13ScreenState extends State<Pertemuan13Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Pertemuan13')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Durasi Memanggang: ${prov.sliderValue.round().toString()}'),
          const SlideWidget(),
          const Align(
            child: ProgressIndicatorWidget(),
            alignment: Alignment.bottomRight,
          ),
          const SizedBox(height: 100),
          const ContentWidget()
        ]),
      ),
    );
  }
}
