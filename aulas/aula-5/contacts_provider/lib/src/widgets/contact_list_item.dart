import 'package:contacts/src/providers/contacts.dart';
import 'package:contacts/src/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/contact.dart';
import '../widgets/profile_pricture.dart';

class ContactListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contact = Provider.of<Contact>(context, listen: true);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.CONTACT_DETAILS,
          arguments: contact,
        );
      },
      leading: Hero(
        tag: contact.id,
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
        onPressed: null,
      ),
    );
  }
}
