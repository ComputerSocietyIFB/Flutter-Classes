import 'package:flutter/material.dart';
import 'package:on_demand_data_loading_chalenge/src/ui/pages/posts/posts_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('On Demand Posts'),
        ),
        body: Posts(),
      ),
    );
  }
}
