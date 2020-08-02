import 'package:class1/styles.dart';
import 'package:flutter/material.dart';
import 'components.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with Styles, Components {
  List<String> items = List.generate(
    15,
    (index) => 'Generated ${index + 1}',
  );
  bool isLoading = false;

  loadData() async {
    await Future.delayed(Duration(milliseconds: 500));

    items.addAll(
      List.generate(
          5, (index) => 'Added from external ${items.length + 1 + index}'),
    );

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification info) {
                  if (!isLoading &&
                      info.metrics.pixels == info.metrics.maxScrollExtent) {
                    loadData();
                    setState(() {
                      isLoading = true;
                    });
                  }

                  return true;
                },
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: 250,
                      child: Card(
                        child: Center(
                            child: Text(
                          items[index],
                          style: mainTextStyle,
                        )),
                      ),
                    );
                  },
                ),
              ),
            ),
            if (isLoading) buildLoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
