import 'package:flutter/material.dart';

class ClosableWidget extends StatefulWidget {
  final Widget child;
  final double parentWidth;

  ClosableWidget({
    Key key,
    this.child,
    this.parentWidth,
  }) : super(key: key);

  @override
  _ClosableWidgetState createState() => _ClosableWidgetState();
}

class _ClosableWidgetState extends State<ClosableWidget> {
  @override
  void initState() {
    if (widget.parentWidth > 650) {
      // Navigator.pop(context);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
