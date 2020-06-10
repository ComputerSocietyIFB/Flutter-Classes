import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  List<Color> colors = [
    Colors.red,
    Colors.teal,
    Colors.amber,
    Colors.blue,
    Colors.pink,
    Colors.lime,
    Colors.orange,
  ];

  _increment() {
    if (counter < 10) {
      setState(() {
        counter++;
      });
    }
  }

  _decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[Random().nextInt(colors.length)],
      body: Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(text: 'Pressed'),
            TextSpan(text: ' $counter ', style: TextStyle(fontSize: 25)),
            TextSpan(text: 'times'),
          ]),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _increment,
          ),
        ],
      ),
    );
  }
}
