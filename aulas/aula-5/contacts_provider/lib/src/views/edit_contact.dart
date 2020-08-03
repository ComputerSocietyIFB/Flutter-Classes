import 'package:contacts/src/data/contacts_mock.dart';
import 'package:contacts/src/providers/contacts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

import '../model/contact.dart';
import '../util/routes.dart';
import '../widgets/profile_pricture.dart';
import '../providers/contacts.dart';

class EditContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context).settings.arguments as Contact;

    TextEditingController nameController = TextEditingController(
      text: contact.name,
    );
    TextEditingController emailController = TextEditingController(
      text: contact.email,
    );

    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pushReplacementNamed(
          AppRoutes.CONTACT_DETAILS,
          arguments: contact,
        );
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Hero(
                  tag: contact.id,
                  child: CircleAvatar(
                      child: ProfilePicture(
                    contact: contact,
                  ))),
              SizedBox(width: 15),
              RichText(
                text: TextSpan(
                  text: 'Edit ',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline6.color,
                  ),
                  children: [
                    TextSpan(
                      text: contact.name.split(' ')[0],
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Provider<ContactsProvider>(
            create: (_) => ContactsProvider(),
            child: Builder(
              builder: (context) => ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'E-mail',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            final newContact = Contact(
              id: contact.id,
              name: nameController.text,
              phoneNumbers: contact.phoneNumbers,
              email: emailController.text,
              company: contact.company,
              gender: contact.gender,
              isOnline: contact.isOnline,
              picture: contact.picture,
            );

            Provider.of<ContactsProvider>(context, listen: false)
                .updateContact(newContact);

            Navigator.of(context).pushReplacementNamed(
              AppRoutes.CONTACT_DETAILS,
              arguments: newContact,
            );
          },
        ),
      ),
    );
  }
}
