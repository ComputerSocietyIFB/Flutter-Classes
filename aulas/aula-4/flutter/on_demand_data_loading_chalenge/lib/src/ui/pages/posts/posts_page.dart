import 'package:flutter/material.dart';
import 'package:on_demand_data_loading_chalenge/src/ui/pages/posts/posts_components.dart';
import 'package:on_demand_data_loading_chalenge/src/ui/pages/posts/posts_page_controller.dart';

import '../../../app_constants.dart' as util;

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts>
    with PostsComponents, PostPageController {
  List localPosts = util.posts.length < 10
      ? util.posts
      : List.generate(10, (index) => util.posts[index]);
  bool isEOF = false;

  loadStarted() => setState(() {
        if (localPosts.length < util.posts.length) isLoading = true;

        if (util.posts[util.posts.length - 1] == null) isEOF = true;

        print('Load Started');
      });

  loadFinished() => setState(() {
        //Adicionando os itens pendentes
        // Impedindo a adição infinita de itens
        // Tratamento para evitar acessar um índice que não existe na lista de posts completa

        localPosts.addAll(
          List.generate(
            10,
            (index) {
              int position = localPosts.length + index;

              if (position < util.posts.length && !isEOF) {
                return util.posts[position];
              }
            },
          ),
        );

        print('fonte: ${util.posts.length} local: ${localPosts.length}');

        isLoading = false;
        print('Load finished');
      });

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ListView.builder(
            itemCount: localPosts.length,
            itemBuilder: (context, index) => localPosts[index] != null
                ? buildPost(
                    context,
                    post: localPosts[index],
                  )
                : (index == util.posts.length + 1
                    ? buildEOFIndicator()
                    : Container()),
          ).loadOnDemand(
            onLoading: loadStarted,
            onLoadFinished: loadFinished,
          ),
          showLoadIndicator(isLoading)
        ],
      );
}
