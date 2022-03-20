import 'package:flutter/material.dart';
import 'package:flutter_application/pertemuan02/pertemuan02_screen.dart';
import 'package:flutter_application/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'title'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pertemuan02Screen())),
                child: Text('Ke Pertemuan 02')),
            Image.network(
              'https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png',
              width: 200,
            ),
            Image.asset('assets/logo.png', width: 200),
            const Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.blue,
              size: 50,
            ),
            const Text.rich(
              TextSpan(
                text: 'Aplikasi', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' belajar ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'berhitung',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Text(
              'Total:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueGrey,
                  letterSpacing: 2),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Center(
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
                child: Align(
                  alignment: FractionalOffset(0.2, 0.6),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
