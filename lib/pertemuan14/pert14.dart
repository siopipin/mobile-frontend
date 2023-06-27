// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pert14 extends StatefulWidget {
  const Pert14({super.key});

  @override
  State<Pert14> createState() => _Pert14State();
}

class _Pert14State extends State<Pert14> {
  TextEditingController ctrlEmail = TextEditingController();

  @override
  void initState() {
    ctrlEmail = TextEditingController(text: "dd/mm/yyyy");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Textfield
          Container(
            child: Row(
              children: [
                Text("Email"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: ctrlEmail,
                  ),
                ),
                IconButton(
                    onPressed: () async {
                      var x = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025));

                      if (x != null) {
                        setState(() {
                          ctrlEmail = TextEditingController(
                              text: DateFormat().format(x));
                        });
                      }
                    },
                    icon: Icon(Icons.data_array))
              ],
            ),
          ),

          ElevatedButton(
              onPressed: () {
                print(ctrlEmail.text);
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
