import 'package:flutter/material.dart';

bool isLoading = false;

class PostPageController {
  ///
  ///
  static loadData(
    Function onLoadFinished,
  ) async {
    print('Loading data');
    await Future.delayed(Duration(milliseconds: 600));
    onLoadFinished(); //Aqui acontece a inserção dos itens na lista
  }
}

extension LiveData on ListView {
  ///
  ///
  NotificationListener<ScrollNotification> loadOnDemand({
    Function onLoading,
    Function onLoadFinished,
  }) {
    return NotificationListener<ScrollNotification>(
      child: this,
      onNotification: (ScrollNotification scrollInfo) {
        if (!isLoading &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          PostPageController.loadData(onLoadFinished);
          onLoading();
          return true;
        } else {
          return false;
        }
      },
    );
  }
}
