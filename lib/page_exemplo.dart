import 'package:flutter/material.dart';
class PageExemplo extends StatelessWidget {
  String nome;

  PageExemplo({this.nome});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: Center(
        child: Text(
          nome,
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w800,
              fontSize: 54),
        ),
      ),
    );
  }
}
