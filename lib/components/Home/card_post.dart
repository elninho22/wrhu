import 'package:br/components/Home/rodape_card.dart';
import 'package:br/components/Home/view.dart';
import 'package:br/helpers/app_cache_image.dart';
import 'package:br/helpers/app_image_placeholder.dart';
import 'package:br/helpers/app_navigation.dart';
import 'package:br/helpers/page_detalhes.dart';
import 'package:br/post/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost({Key key, this.post, this.onTap, @required this.item})
      : super(key: key);

  final Post post;
  final VoidCallback onTap;
  final Post item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: InkWell(
          splashColor: Theme.of(context).splashColor,
          onTap: () {
            push(context, View(post));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                  padding: const EdgeInsets.all(8.0),
                  child: AppImagePlaceholder(
                    urlImage: post.imglink,
                  )),
              PageDetalhes(
                titulo: post.title,
                data: post.date,
                descricao: post.description,
              ),
              // ignore: deprecated_member_use
              RodapeCard(context,totalCurtir: post.totalCurtir,totalComentario: post.totalComentario)
            ],
          ),
        ),
      ),
    );
  }
}
