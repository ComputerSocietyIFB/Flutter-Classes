import 'dart:math';

import 'package:flutter/material.dart';
import 'package:on_demand_data_loading_chalenge/src/model/post.dart';
import '../../../app_constants.dart' as util;
import '../styles/posts_page_styles.dart' as styles;

class PostsComponents {
  Widget buildPost(BuildContext context, {Post post}) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 350,
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 20),
          elevation: 4,
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      post.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                      child: Text(
                    post.id.toString(),
                    style: styles.postIdTextStyle,
                  ))
                ],
              )),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: FlutterLogo(),
                ),
                trailing: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
                      IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                    ],
                  ),
                ),
                title: Text(post.author),
              )
            ],
          ),
        ),
      );

  Widget showLoadIndicator(bool isLoading) {
    return isLoading
        ? Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(.75),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : Container();
  }

  Widget buildEOFIndicator() {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.black,
        child: FittedBox(
          child: Text('Fim da linha', style: styles.postIdTextStyle),
        ),
      ),
    );
  }

  String selectImageUrl() {
    String url = util.images[Random().nextInt(util.images.length)];
    print('Selected url ==> $url');
    return url;
  }
}
