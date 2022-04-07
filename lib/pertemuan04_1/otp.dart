import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04_1/post_ig.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String title = 'OTP';
  TextEditingController otp = TextEditingController();

  bool? isOTPEmpty;

  @override
  void initState() {
    otp.text = '1234';
    isOTPEmpty = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen $title')),
      body: Column(
        children: [
          //Textfield
          TextField(
            controller: otp,
            decoration: InputDecoration(
                errorText:
                    isOTPEmpty == true ? 'OTP tidak boleh kosong' : null),
          ),

          //Button
          ElevatedButton(
              onPressed: () {
                if (otp.text.isEmpty) {
                  setState(() {
                    isOTPEmpty = true;
                  });
                } else {
                  //Navigator ke halaman post IG
                  print(otp.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostIGScren(judul: otp.text)));
                }
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
