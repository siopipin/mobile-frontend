import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),

          ///outline button
          ElevatedButton(onPressed: () {}, child: Text('data')),
          OutlinedButton(onPressed: () {}, child: Text('data')),
          TextButton(
              onPressed: () {
                print('Hallo');
              },
              child: Row(
                children: const [
                  Icon(Icons.access_alarms_outlined),
                  Text('Klik saya')
                ],
              )),

          IconButton(onPressed: () {}, icon: Text('data'))
        ],
      ),
    );
  }
}
