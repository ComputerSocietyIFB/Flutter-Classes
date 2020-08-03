import 'package:contacts/src/data/contacts_mock.dart';
import 'package:flutter/material.dart';

import '../model/contact.dart';
import '../widgets/profile_pricture.dart';
import '../util/routes.dart';

class EditContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> data = ModalRoute.of(context).settings.arguments;
    TextEditingController nameController = TextEditingController(
      text: (data['contact'] as Contact).name,
    );
    TextEditingController emailController = TextEditingController(
      text: (data['contact'] as Contact).email,
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Hero(
                tag: (data['contact'] as Contact).name,
                child: CircleAvatar(
                    child: ProfilePicture(
                  contact: (data['contact'] as Contact),
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
                    text: (data['contact'] as Contact).name.split(' ')[0],
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
        child: ListView(
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          final result = Contact(
            id: (data['contact'] as Contact).id,
            name: nameController.text ?? (data['contact'] as Contact).name,
            email: emailController.text ?? (data['contact'] as Contact).email,
            phoneNumbers: (data['contact'] as Contact).phoneNumbers,
            company: (data['contact'] as Contact).company,
            gender: (data['contact'] as Contact).gender,
            isOnline: (data['contact'] as Contact).isOnline,
            picture: (data['contact'] as Contact).picture,
          );

          CONTACTS_LIST[(data['index'] as int)]['name'] = result.name;
          CONTACTS_LIST[(data['index'] as int)]['email'] = result.email;

          Navigator.of(context).pushReplacementNamed(
            AppRoutes.CONTACT_DETAILS,
            arguments: {
              'contact': (data['contact'] as Contact),
              'index': (data['index'] as int),
            },
          );
        },
      ),
    );
  }
}
