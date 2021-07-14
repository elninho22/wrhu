import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageDetalhes extends StatelessWidget {
  String titulo;
  String data;
  String descricao;

  PageDetalhes({@required this.titulo, this.data, @required this.descricao});
  @override
  Widget build(BuildContext context) {
    return _getBody(titulo, data, descricao);
  }

  Widget _getBody(tittle, data, description) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _getTittle(tittle),
          _getDate(data),
          _getDescription(description),
        ],
      ),
    );
  }

  _getTittle(title) {
    return new Text(
      title,
      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }

  _getDate(data) {
    return new Container(
//        margin: new EdgeInsets.only(top: 5.0),
        child: new Text(
      data,
      style:
          new TextStyle(fontSize: 13.0, color: Colors.black.withOpacity(0.5)),
    ));
  }

  _getDescription(description) {
    return new Container(
      margin: new EdgeInsets.only(top: 10.0),
      child: new Text(description),
    );
  }
}
