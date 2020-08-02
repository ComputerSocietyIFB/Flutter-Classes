import 'package:flutter/material.dart';

class Styles {
// Textos
// Principal
  TextStyle mainTextStyle = TextStyle(
    fontSize: 50,
    color: Colors.deepOrange,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
  );

// Containers
  var mainContainerStyle = BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        offset: Offset(2, 2),
      ),
    ],
  );
}
