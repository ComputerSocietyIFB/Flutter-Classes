import 'package:flutter/material.dart';
import 'package:responsible_project/widgets/input_widget.dart';

class ChatListPanelWidget extends StatefulWidget {
  @override
  _ChatListPanelWidgetState createState() => _ChatListPanelWidgetState();
}

class _ChatListPanelWidgetState extends State<ChatListPanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColorDark,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).textTheme.headline1.color),
        title: CustomInput(),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        height: double.infinity,
        color: Theme.of(context).primaryColorDark,
        child: Center(
            child: Text(
          "Chats List",
          style: Theme.of(context).textTheme.headline1,
        )),
      ),
    );
  }
}
