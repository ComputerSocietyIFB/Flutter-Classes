import 'package:flutter/material.dart';

import './src/views/contacts_home.dart';
import './src/views/contact_detail.dart';
import './src/views/edit_contact.dart';

import './src/util/routes.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.HOME: (_) => ContactsHome(),
        AppRoutes.CONTACT_DETAILS: (_) => ContactDetailScreen(),
        AppRoutes.EDIT_CONTACT: (_) => EditContactScreen(),
      },
    );
  }
}
