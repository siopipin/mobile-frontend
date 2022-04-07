import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04_3/beranda_id.dart';

class LoginIG extends StatefulWidget {
  LoginIG({Key? key}) : super(key: key);

  @override
  State<LoginIG> createState() => _LoginIGState();
}

class _LoginIGState extends State<LoginIG> {
  TextEditingController userCTRL = TextEditingController();
  TextEditingController passCTRL = TextEditingController();

  String pass = 'Andhika';
  bool? isPasswordValid = true;

  @override
  void initState() {
    userCTRL.text = 'Andhika';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login IG')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Form
            TextField(
              controller: userCTRL,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
                controller: passCTRL,
                decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: isPasswordValid == true
                        ? Icon(Icons.check_box)
                        : Icon(Icons.close))),

            //Button Login
            ElevatedButton(
                onPressed: () {
                  //Navigator kirim username ke halaman beranda IG
                  if (passCTRL.text == pass) {
                    setState(() {
                      isPasswordValid = true;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BerandaIG(username: userCTRL.text)));
                  } else {
                    setState(() {
                      isPasswordValid = false;
                    });
                  }
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
