import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan15/components/button_image_picker.dart';
import 'package:flutter_application/pertemuan15/components/carousel_slider.dart';
import 'package:flutter_application/pertemuan15/pertemuan15_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Pertemuan15Screen extends StatefulWidget {
  const Pertemuan15Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan15Screen> createState() => _Pertemuan15ScreenState();
}

class _Pertemuan15ScreenState extends State<Pertemuan15Screen> {
  List<XFile>? listImg;

  //IFCPagi
  XFile? gbr;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan15Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan15'),
      ),
      body: ListView(
        children: [
          //Carousel Slider
          const CarouselSliderWidget(),

          //Image Picker
          prov.isImageLoaded == true
              ? Image.file(File(prov.img!.path))
              : Container(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ButtonImagePicker(
                  isGallery: true,
                  title: 'Open Gallery',
                ),
                TextButton(
                  onPressed: () async {
                    var pilihGambar = ImagePicker();
                    var hasil = await pilihGambar.pickMultiImage();

                    if (hasil == null) {
                      print('Tidak ada foto');
                    } else {
                      setState(() {
                        listImg = hasil;
                      });
                    }
                  },
                  child: Text('Multi Image'),
                ),
                const ButtonImagePicker(
                  isGallery: false,
                  title: 'Camera',
                ),
              ],
            ),
          ),

          listImg != null
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 4,
                        children: listImg!.map((e) {
                          return Image.file(File(e.path));
                        }).toList(),
                      )))
              : Container(),

          ElevatedButton(
              onPressed: () async {
                try {
                  var response = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);

                  if (response == null) {
                    print('tidak ada gambar');
                  } else {
                    setState(() {
                      gbr = response;
                    });
                  }
                } catch (e) {
                  print(e.toString());
                }
              },
              child: const Text('Pilih Gambar')),

          gbr == null
              ? Container(
                  child: Text('Tidak ada gambar bro'),
                )
              : Image.file(File(gbr!.path))
        ],
      ),
    );
  }
}
