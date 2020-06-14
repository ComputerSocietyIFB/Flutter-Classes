import 'package:flutter/material.dart';
import 'package:responsible_project/widgets/input_widget.dart';

class ChatPanelWidget extends StatefulWidget {
  @override
  _ChatPanelWidgetState createState() => _ChatPanelWidgetState();
}

class _ChatPanelWidgetState extends State<ChatPanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).textTheme.headline1.color),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        color: Color(0xFF0E1621),
        child: Center(
            child: Text(
          'Conversation Panel',
          style: Theme.of(context).textTheme.headline1,
        )),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).accentColor,
        height: 65,
        child: CustomInput(
          leading: IconButton(
              icon: Icon(
                Icons.attach_file,
                color: Theme.of(context).textTheme.headline1.color,
              ),
              onPressed: () {}),
          flat: true,
          hint: 'Write a message...',
          trailing: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.face,
                  color: Theme.of(context).textTheme.headline1.color,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.mic_none,
                  color: Theme.of(context).textTheme.headline1.color,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
