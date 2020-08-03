import 'package:flutter/material.dart';

import '../data/contacts_mock.dart';
import '../model/contact.dart';
import '../widgets/contact_list_item.dart';

class ContactsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        itemBuilder: (ctx, index) => ContactListItem(
          Contact(
            id: CONTACTS_LIST[index]['_id'],
            name: CONTACTS_LIST[index]['name'],
            phoneNumbers: CONTACTS_LIST[index]['phones'],
            email: CONTACTS_LIST[index]['email'],
            picture: CONTACTS_LIST[index]['gender'].toString().startsWith('m')
                ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgF5WyWTQd8RE-Zi6juP1uRFswpwsKzloFHA&usqp=CAU'
                : 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8jfStkk9KUPZUq11edOzDaAYnCbLzPwMkSg&usqp=CAU',
            company: CONTACTS_LIST[index]['company'],
            gender: CONTACTS_LIST[index]['gender'],
            isOnline: CONTACTS_LIST[index]['online'],
          ),
          index: index,
          phoneNumbers: CONTACTS_LIST,
        ),
      ),
    );
  }
}
