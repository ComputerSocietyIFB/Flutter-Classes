import 'package:flutter/material.dart';
import 'package:responsible_project/widgets/closable_widget.dart';
import 'package:responsible_project/widgets/input_widget.dart';
import 'package:responsible_project/widgets/panels/chat_list_panel.dart';

class ChatPanelWidget extends StatefulWidget {
  final String title;
  final double parentWidth;

  const ChatPanelWidget({
    Key key,
    this.title = 'Conversation Panel',
    this.parentWidth,
  }) : super(key: key);

  @override
  _ChatPanelWidgetState createState() => _ChatPanelWidgetState();
}

class _ChatPanelWidgetState extends State<ChatPanelWidget> {
  Widget _chooseAppBarLeading(double parentWidth) => parentWidth <= 650
      ? IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ChatListPanelWidget(),
            ));
          })
      : Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _chooseAppBarLeading(widget.parentWidth),
        iconTheme:
            IconThemeData(color: Theme.of(context).textTheme.headline1.color),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        color: Color(0xFF0E1621),
        child: Center(
            child: Text(
          '${widget.title} : ${widget.parentWidth}',
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
