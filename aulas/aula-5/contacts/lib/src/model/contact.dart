import 'package:flutter/foundation.dart';

class Contact {
  final String id;
  final String name;
  final List<Map<String, Object>> phoneNumbers;
  final String email;
  final String company;
  final String picture;
  final String gender;
  bool isOnline;

  Contact({
    @required this.id,
    @required this.name,
    @required this.phoneNumbers,
    @required this.email,
    @required this.company,
    this.picture,
    this.gender = 'male',
    this.isOnline = false,
  });
}
