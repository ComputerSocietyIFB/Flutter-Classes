import 'package:flutter/material.dart';

class Components {
  buildLoadingIndicator() {
    return Column(
      children: [
        Container(
          child: CircularProgressIndicator(),
        ),
        SizedBox(height: 15)
      ],
    );
  }
}
