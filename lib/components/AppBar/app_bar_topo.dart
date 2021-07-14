import 'package:br/components/AppBar/app_menu_topo_usuario.dart';
import 'package:flutter/material.dart';

Widget AppBarTopo(BuildContext context, String titulo) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.black87, //change your color here
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(
      titulo,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    actions: <Widget>[AppMenuTopoUsuario()],
  );
}
