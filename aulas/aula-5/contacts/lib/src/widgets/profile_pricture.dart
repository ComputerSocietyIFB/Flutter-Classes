import 'package:flutter/material.dart';

import '../model/contact.dart';

class ProfilePicture extends StatelessWidget {
  final Contact contact;
  final double onlineIndicatorSize;

  const ProfilePicture({
    Key key,
    @required this.contact,
    this.onlineIndicatorSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipOval(
          child: Image.network(
            contact.picture,
            width: 65,
            height: 65,
          ),
        ),
        if (contact.isOnline)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: onlineIndicatorSize,
              height: onlineIndicatorSize,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(onlineIndicatorSize * .5),
              ),
            ),
          ),
      ],
    );
  }
}
