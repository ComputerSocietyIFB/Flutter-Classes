import 'package:flutter/material.dart';
import 'package:project2/second.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> nomes = ['joão', 'ana', 'carlos', 'mariana', 'Matheus'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        reverse: true,
        children:
            nomes.map((e) => Text(e, style: TextStyle(fontSize: 75))).toList(),
      ),
    ));
  }
}
