import 'package:br/components/Home/card_post.dart';
import 'package:br/post/data_base.dart';
import 'package:flutter/material.dart';

class ListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Material(
          child: CardPost(post: posts[index], item: posts[index]),
        );
      },
    );
  }
}
