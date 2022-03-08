import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);

  final String title;
  final int name;

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
            Text(widget.name.toString()),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 70,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ], color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                child: Text(
                  'Continue daily trainning',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text('Continue daily trainning')),
            Image.network(
                'https://static.wikia.nocookie.net/naruto/images/d/dc/Naruto%27s_Sage_Mode.png/revision/latest?cb=20150124180545'),
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
