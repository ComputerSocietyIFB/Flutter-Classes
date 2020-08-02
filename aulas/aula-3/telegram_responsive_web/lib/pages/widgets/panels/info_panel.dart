import 'package:flutter/material.dart';

class InfoPanel extends StatefulWidget {
  @override
  _InfoPanelState createState() => _InfoPanelState();
}

class _InfoPanelState extends State<InfoPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
