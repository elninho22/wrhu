import 'package:br/components/AppBar/list_menu_usuario.dart';
import 'package:br/helpers/app_image_placeholder.dart';
import 'package:flutter/material.dart';

Widget AppMenuTopoUsuario() {
  return PopupMenuButton<String>(
    offset: Offset(0, 100),
    onSelected: menuAction,
    itemBuilder: (BuildContext context) {
      return ListMenuUsuario.menu.map((String menu) {
        return PopupMenuItem<String>(
          value: menu,
          child: Text(menu,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500)),
        );
      }).toList();
    },
    child: Container(
      width: 55,
      padding: const EdgeInsets.all(10.0),
      child: ClipOval(
        child: AppImagePlaceholder(
          urlImage:
              'https://miro.medium.com/max/1400/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
          height: 100,
        ),
      ),
    ),
  );
}

void menuAction(String menu) {
  if (menu == ListMenuUsuario.Configuracoes) {
    print('Configurações');
  } else if (menu == ListMenuUsuario.Perfil) {
    print('Perfil');
  } else if (menu == ListMenuUsuario.Logout) {
    print('Sair');
  }
}
