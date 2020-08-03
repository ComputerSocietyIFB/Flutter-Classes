import 'package:flutter/widgets.dart';

import '../model/contact.dart';
import '../data/contacts_mock.dart';

class ContactsProvider with ChangeNotifier {
  List<Contact> _items =
      CONTACTS_LIST.map((json) => Contact.fromJson(json)).toList();

  List<Contact> get contact_items => [..._items];

  void updateContact(Contact contact) {
    if (contact == null || contact.id == null) return;

    int index = _items.indexWhere((element) => element.id == contact.id);

    if (index >= 0) {
      _items[index] = contact;
      notifyListeners();
    }
  }

  void updateListeners() => notifyListeners();
}
