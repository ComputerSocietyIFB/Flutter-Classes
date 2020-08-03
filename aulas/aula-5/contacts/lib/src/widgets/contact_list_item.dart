import 'package:contacts/src/util/routes.dart';
import 'package:flutter/material.dart';

import '../model/contact.dart';
import '../widgets/profile_pricture.dart';

class ContactListItem extends StatelessWidget {
  final Contact contact;
  final int index;
  final List<Map<String, Object>> phoneNumbers;

  const ContactListItem(
    this.contact, {
    this.index,
    this.phoneNumbers,
  });

  _onTap(context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CONTACT_DETAILS,
      arguments: {
        'contact': contact,
        'index': index,
        'phoneNumbers': phoneNumbers,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      onTap: () => _onTap(context),
      leading: Hero(
        tag: contact.name + contact.email,
        child: CircleAvatar(
          child: ProfilePicture(
            contact: contact,
            onlineIndicatorSize: 12,
          ),
        ),
      ),
      title: Text(contact.name),
      subtitle: Text(contact.email),
      trailing: IconButton(
        icon: Icon(Icons.keyboard_arrow_right),
        onPressed: () => _onTap(context),
      ),
    );
  }
}
