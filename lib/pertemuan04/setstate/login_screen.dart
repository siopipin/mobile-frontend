import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan04/provider/produk2_screen.dart';
import 'package:flutter_application/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application/pertemuan04/setstate/components/login_textfield_david.dart';
import 'package:flutter_application/pertemuan04/setstate/pertemuan04_ifbpagi.dart';
import 'package:flutter_application/pertemuan04/setstate/produk_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Contoh LocalVariabel
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String loginText = "Josua";
  double defaultPadding = 20;

  String password = '12345';
  bool? loginValid;

  //status username dan password kosong!
  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override
  void initState() {
    //Contoh inisialisasi default state. Nilai ini akan tampil saat pertama kali aplikasi run.
    usernameController.text = 'Indra';
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    loginValid = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loginText),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                //Spacer widget seperti flex untuk mengatur jarak antara widget di flex container, column, atau row.
                const Spacer(),

                //LoginForm
                SizedBox(
                    child: Column(
                  children: [
                    LoginTextFieldDavid(
                        ctrl: usernameController,
                        status: isUsernameEmpty,
                        label: 'Username'),
                    LoginTextFieldDavid(
                        ctrl: passwordController,
                        status: isPasswordEmpty,
                        label: 'Password'),
                  ],
                )),
                SizedBox(height: defaultPadding),

                //LoginButton
                ElevatedButton(
                  onPressed: () {
                    //contoh validasi jika username dan password empty maka tampilkan pesan error
                    if (usernameController.text.isEmpty) {
                      setState(() {
                        isUsernameEmpty = true;
                      });
                    }
                    if (passwordController.text.isEmpty) {
                      setState(() {
                        isPasswordEmpty = true;
                      });
                    }
                    //Jika tidak ada kesalahan navigasi ke halaman produk
                    else {
                      if (password == passwordController.text) {
                        //Arahkan ke halaman berikutnya
                        setState(() {
                          isUsernameEmpty = false;
                          isPasswordEmpty = false;
                          loginValid = true;
                        });

                        //Navigasi
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            //passing data to another screen
                            return ProdukScreen(
                                username: usernameController.text);
                          },
                        ));
                      } else {
                        //ubah warnah button menjadi abu-abu
                        setState(() {
                          loginValid = false;
                        });
                      }
                    }
                  },
                  child: loginValid == true
                      ? Text(loginText)
                      : Text('Kata sandi tidak sama'),
                  style: ElevatedButton.styleFrom(
                      primary: loginValid == true ? Colors.blue : Colors.grey,
                      minimumSize: Size(
                          MediaQuery.of(context).size.width / 2 + 100, 50)),
                ),

                SizedBox(height: defaultPadding),
                const Divider(),
                const Text(
                  'Klik tomboh di bawah untuk contoh menggunakan Provider',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ProdukScreen2())));
                  },
                  child: Text('Provider'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: Size(
                          MediaQuery.of(context).size.width / 2 + 100, 50)),
                ),

                // Widget custom.
                for (int i = 0; i < 5; i++)
                  Pertemuan04IFBPagiTeori(
                      nama: i.toString(), keluhan: "Keluahan ${i.toString()}"),

                const Spacer(),
              ])),
        ),
      ),
    );
  }
}
