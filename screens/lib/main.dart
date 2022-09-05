import 'package:flutter/material.dart';
import 'package:screens/screen/Myfirstscreen.dart';
import 'package:screens/screen/Mysecondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Myfirstscreen();
                })));
              });
            },
            child: Text(
              "go to first screen",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Mysecondscreen();
                })));
              });
            },
            child: Text(
              "go to second screen",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ]),
      ),
    );
  }
}
