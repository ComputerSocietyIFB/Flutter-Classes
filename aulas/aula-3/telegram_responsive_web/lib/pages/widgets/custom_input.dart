import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final Widget leading;
  final String hint;
  final Widget trailing;
  final bool flat;

  const CustomInput({
    Key key,
    this.leading,
    this.hint = 'Some thing',
    this.trailing,
    this.flat = false,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: widget.flat
              ? Theme.of(context).primaryColorDark
              : Color(0xFF242F3D),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                widget.leading ?? Container(),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                widget.trailing ?? Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
