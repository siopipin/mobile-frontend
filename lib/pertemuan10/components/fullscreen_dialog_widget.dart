import 'package:flutter/material.dart';

class FullScreenDialog extends StatelessWidget {
  const FullScreenDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full-screen Dialog'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))
        ],
      ),
      body: const Center(
        child: Text("Full-screen dialog"),
      ),
    );
  }
}
