import 'package:flutter/material.dart';
import 'package:responsible_project/widgets/panels/chat_list_panel.dart';
import 'package:responsible_project/widgets/panels/chat_panel.dart';
import 'package:responsible_project/widgets/panels/info_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            constraints.constrainWidth() > 650
                ? Expanded(
                    child: ChatListPanelWidget(),
                    flex: constraints.constrainWidth() > 500 ? 4 : 3)
                : Container(),
            Expanded(
                child: ChatPanelWidget(),
                flex: constraints.constrainWidth() > 500 ? 5 : 4),
            constraints.constrainWidth() > 850
                ? Expanded(
                    child: InfoPanelWidget(),
                    flex: constraints.constrainWidth() > 500 ? 2 : 1)
                : Container(),
          ],
        );
      }),
    );
  }
}
