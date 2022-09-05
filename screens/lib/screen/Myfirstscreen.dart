import 'dart:math';

import 'package:flutter/material.dart';
import '../main.dart';

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key});

  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  List myitems = ["Amman", "Irbid", "Aqaba", "jarsh"];
  String defultitem = "Amman";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                  return MyApp();
                })));
              });
            },
            child: Text(
              "go to main screen",
              style: TextStyle(fontSize: 25),
            ),
          ),
          DropdownButton(
            value: defultitem,
            items: myitems
                .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                .toList(),
            onChanged: (val) {
              setState(() {
                defultitem = val.toString();
              });
            },
          ),
        ]),
      ),
    );
  }
}
