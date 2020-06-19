import 'package:flutter/material.dart';

class InfoPanelWidget extends StatefulWidget {
  @override
  _InfoPanelWidgetState createState() => _InfoPanelWidgetState();
}

class _InfoPanelWidgetState extends State<InfoPanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        height: double.infinity,
        color: Theme.of(context).primaryColorDark,
        child: Center(
          child: Text(
            'Info Panel',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
