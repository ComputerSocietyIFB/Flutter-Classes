import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/contacts_mock.dart';
import '../providers/contacts.dart';
import '../widgets/contact_list_item.dart';

class ContactsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contacts =
        Provider.of<ContactsProvider>(context, listen: true).contact_items;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextStyle(color: Theme.of(context).textTheme.headline6.color),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (_, __) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        itemCount: CONTACTS_LIST.length,
        itemBuilder: (ctx, index) {
          return ChangeNotifierProvider.value(
            value: contacts[index],
            child: ContactListItem(),
          );
        },
      ),
    );
  }
}
