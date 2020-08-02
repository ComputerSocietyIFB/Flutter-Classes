import 'package:flutter/material.dart';
import 'package:telegram_responsive_web/pages/home_page.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColorDark: Color(0xFF17212B),
        accentColor: Color(0xFF0E1621),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontWeight: FontWeight.w100,
            color: Color(0xFF666D71),
            fontSize: 14,
          ),
          headline1: TextStyle(
            fontWeight: FontWeight.w100,
            color: Color(0xFF666D71),
            fontSize: 14,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
