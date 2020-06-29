import 'dart:html';

import 'package:flutter/material.dart';
import 'package:telegram_responsive_web/pages/widgets/custom_input.dart';
import 'package:telegram_responsive_web/pages/widgets/panels/my_custom_clippath.dart';

class ChatPanel extends StatefulWidget {
  @override
  _ChatPanelState createState() => _ChatPanelState();
}

class _ChatPanelState extends State<ChatPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: ClipPath(
            clipper: MyClip(),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Image.asset(
                'images/paisagem.jpg',
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                color: Colors.lime,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: CustomInput(),
      ),
    );
  }
}
