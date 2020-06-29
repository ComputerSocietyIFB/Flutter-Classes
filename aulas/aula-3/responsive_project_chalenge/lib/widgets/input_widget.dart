import 'dart:ui';

import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final bool flat;
  final String hint;
  final Widget trailing;
  final Widget leading;

  const CustomInput({
    Key key,
    this.flat = false,
    this.hint = 'Some thing',
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: widget.flat
              ? Theme.of(context).primaryColorDark
              : Color(0xFF242F3D),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (widget.leading ?? Container()),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    maxLines: 1,
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      hintText: widget.hint,
                      hintStyle: Theme.of(context).textTheme.subtitle1,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              (widget.trailing ?? Container()),
            ],
          ),
        ),
      ),
    );
  }
}
