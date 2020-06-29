import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List items = List.generate(30, (index) => 'Element ${index + 1}');
  bool isLoading = false;

// async functions ajudam a não travar a interface em longas cargas de informação
  loadData() async {
    print('Loading data');

    // Essa é a linha que pode demorar pra ser executada
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      items.add('Element ${items.length + 1}');

      isLoading = false;
      print('Data loading finished');
    });
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (!isLoading &&
                    (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent)) {
                  loadData(); // <==Essa função será chamada quando chegarmos ao fim do scroll

                  setState(() => isLoading =
                      true); // <== Atualiza o estado dos widgets dependentes desta variável
                  return true;
                } else {
                  return false;
                }
              },
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(items[index]));
                },
              ),
            ),
          ),

          // Lógica para exibir o progress indicator e simular uma margem
          isLoading
              ? Container(child: CircularProgressIndicator())
              : Container(),
          isLoading ? SizedBox(height: 20) : Container(),
        ],
      );
}
