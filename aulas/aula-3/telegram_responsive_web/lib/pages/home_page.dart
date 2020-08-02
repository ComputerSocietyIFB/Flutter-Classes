import 'package:flutter/material.dart';
import 'package:telegram_responsive_web/pages/widgets/panels/chat_list_panel.dart';
import 'package:telegram_responsive_web/pages/widgets/panels/chat_panel.dart';
import 'package:telegram_responsive_web/pages/widgets/panels/info_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            constraints.constrainWidth() > 650
                ? Expanded(flex: 4, child: ChatListPanel())
                : Container(),
            Expanded(flex: 5, child: ChatPanel()),
            constraints.constrainWidth() > 1000
                ? Expanded(flex: 2, child: InfoPanel())
                : Container(),
          ],
        );
      },
    );
  }
}
