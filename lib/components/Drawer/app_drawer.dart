import 'package:br/components/Drawer/button_black.dart';
import 'package:br/components/Drawer/item_menu.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      child: Drawer(
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ButtonBlack(),
              ItemMenu(
                icon: Icons.person_add,
                title: "CADASTRO",
                opacity: 1.0,
                color: Theme.of(context).primaryColor,
              ),
              Divider(),
              ItemMenu(icon: Icons.compare_arrows, title: "DEMONSTRATIVOS"),
              Divider(),
              ItemMenu(icon: Icons.attach_money, title: "RENDIMENTOS"),
              Divider(),
              ItemMenu(icon: Icons.swap_vertical_circle, title: "BENEFÍCIOS"),
              Divider(),
              ItemMenu(icon: Icons.nature_people, title: "FÉRIAS"),
              Divider(),
              ItemMenu(icon: Icons.timer_off, title: "PONTO"),
              Divider()
            ],
          ),
        ]),
      ),
    );
  }
}
