import 'package:flutter/material.dart';

import '../model/contact.dart';
import '../widgets/custom_action_button.dart';
import '../widgets/profile_pricture.dart';
import '../util/routes.dart';

class ContactDetailScreen extends StatefulWidget {
  @override
  _ContactDetailScreenState createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, Object> data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.EDIT_CONTACT,
                arguments: {
                  'contact': data['contact'],
                  'index': data['index'],
                },
              );
            },
          ),
        ],
        title: Text(
          (data['contact'] as Contact).name,
          style: Theme.of(context).textTheme.headline5,
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 35),
              padding: const EdgeInsets.only(left: 2),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Hero(
                    tag: (data['contact'] as Contact).name +
                        (data['contact'] as Contact).email,
                    child:
                        ProfilePicture(contact: (data['contact'] as Contact)),
                  ),
                  Text(
                    (data['contact'] as Contact).name.split(' ')[0],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ...List.generate(
              (data['contact'] as Contact).phoneNumbers.length,
              (index) => Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .88,
                    child: ListTile(
                      title: Text(
                        (data['contact'] as Contact).phoneNumbers[index]
                            ['phone'],
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      subtitle: Text('operator'),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: <Widget>[
                            CustomButton(Icons.call, color: Colors.green),
                            SizedBox(width: 10),
                            CustomButton(Icons.message),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Divider(),
            ),
            ListTile(
              title: Text((data['contact'] as Contact).email),
              subtitle: Text('email'),
            ),
            ListTile(
              title: Text((data['contact'] as Contact).company),
              subtitle: Text('company'),
            ),
          ],
        ),
      ),
    );
  }
}
