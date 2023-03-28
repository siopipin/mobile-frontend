import 'package:flutter/material.dart';

class Pertemuan03ScreenPraktek extends StatefulWidget {
  const Pertemuan03ScreenPraktek({super.key});

  @override
  State<Pertemuan03ScreenPraktek> createState() =>
      _Pertemuan03ScreenPraktekState();
}

class _Pertemuan03ScreenPraktekState extends State<Pertemuan03ScreenPraktek> {
  String text = "Hallo";
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              //header logo
              Row(
                children: [
                  Icon(Icons.accessibility_sharp),
                  Text("Instagram"),
                ],
              ),
              SizedBox(height: 30),
              //Isian username
              Row(
                children: [
                  Container(
                    width: 80,
                    margin: EdgeInsets.only(right: 10),
                    child: Text("Username"),
                  ),
                  Expanded(
                    child: TextField(
                      controller: ctrlUsername,
                      decoration: InputDecoration(hintText: "Isi Username"),
                    ),
                  )
                ],
              ),
              //Isian password
              Row(
                children: [
                  Container(
                    width: 80,
                    margin: EdgeInsets.only(right: 10),
                    child: Text("Pass"),
                  ),
                  Expanded(
                    child: TextField(
                      controller: ctrlPassword,
                      decoration: InputDecoration(hintText: "Isi Password"),
                    ),
                  )
                ],
              ),
              // text buttton forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        print(ctrlUsername.text);
                        print(ctrlPassword.text);
                      },
                      child: Text("Forgot Password?"))
                ],
              ),

              Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //text
                        Text("Login"),

                        // icon
                        Icon(Icons.play_circle_fill)
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
