import 'package:br/components/AppBar/app_bar_topo.dart';
import 'package:br/helpers/app_image_placeholder.dart';
import 'package:br/helpers/page_detalhes.dart';
import 'package:br/post/post.dart';
import 'package:flutter/material.dart';

class View extends StatelessWidget {
  Post data;

  View(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTopo(context,data.title),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Card(
        child: ListView(
          children: <Widget>[
            AppImagePlaceholder(urlImage: data.imglink,),
            PageDetalhes(
              titulo: data.title,
              data: data.date,
              descricao: data.description,
            )
          ],
        ),
      ),
    );
  }
}
