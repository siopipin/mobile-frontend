import 'package:flutter/material.dart';

class Pert4CobaInitState extends StatefulWidget {
  const Pert4CobaInitState({super.key});

  @override
  State<Pert4CobaInitState> createState() => _Pert4CobaInitStateState();
}

class _Pert4CobaInitStateState extends State<Pert4CobaInitState> {
  bool? isDone;

  @override
  void initState() {
    isDone = false;
    getData();
    super.initState();
  }

  getData() async {
    await Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isDone = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Selamat datang",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 80,
                color: isDone == false ? Colors.blue : Colors.red),
          ),
          isDone == true
              ? Text(
                  "Hallo",
                  style: TextStyle(fontSize: 80, color: Colors.blue),
                )
              : CircularProgressIndicator(),
          ElevatedButton(
              onPressed: () async {
                setState(() {
                  isDone = false;
                });
                await getData();
              },
              child: Text("refresh"))
        ],
      )),
    );
  }
}
