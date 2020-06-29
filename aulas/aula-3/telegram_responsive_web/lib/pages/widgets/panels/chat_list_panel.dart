import 'package:flutter/material.dart';
import 'package:telegram_responsive_web/pages/widgets/custom_input.dart';

class ChatListPanel extends StatefulWidget {
  @override
  _ChatListPanelState createState() => _ChatListPanelState();
}

class _ChatListPanelState extends State<ChatListPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorDark,
        title: CustomInput(
          leading: Icon(Icons.ac_unit),
          trailing: Icon(Icons.accessibility_new),
        ),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
