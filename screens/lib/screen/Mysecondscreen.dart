import 'package:flutter/material.dart';
import '../main.dart';

class Mysecondscreen extends StatefulWidget {
  const Mysecondscreen({super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  List mylist2 = ["jordan", "syria", "uae", "ksa"];
  String selecteditem = "uae";
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
            value: selecteditem,
            items: mylist2
                .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                .toList(),
            onChanged: (val) {
              setState(() {
                selecteditem = val.toString();
              });
            },
          ),
        ]),
      ),
    );
  }
}
