import 'package:contacts/src/providers/contacts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './src/views/contacts_home.dart';
import './src/views/contact_detail.dart';
import './src/views/edit_contact.dart';

import './src/util/routes.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactsProvider(),
      child: MaterialApp(
        routes: {
          AppRoutes.HOME: (_) => ContactsHome(),
          AppRoutes.CONTACT_DETAILS: (_) => ContactDetailScreen(),
          AppRoutes.EDIT_CONTACT: (_) => EditContactScreen(),
        },
      ),
    );
  }
}
