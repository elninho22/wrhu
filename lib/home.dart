import 'package:br/components/AppBar/app_bar_topo.dart';
import 'package:br/components/BottomAppBar/app_navigation_simple.dart';
import 'package:br/components/Drawer/app_drawer.dart';
import 'package:br/components/Home/list_home.dart';
import 'package:br/page_exemplo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  _onTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      ListHome(),
      PageExemplo(nome: 'Biblioteca'),
      PageExemplo(nome: 'Notificações'),
      PageExemplo(nome: 'Chat'),
    ];

    return SafeArea(
      child: Scaffold(
          drawer: AppDrawer(),
          appBar: AppBarTopo(context, "Dashboard"),
          body: _screens[_page],
          bottomNavigationBar: AppNavigationSimple(
              context, _bottomNavigationKey, _page, _onTapped)),
//          bottomNavigationBar: AppCurvedNavigationBar(_bottomNavigationKey, _page, _onTapped)),
    );
  }
}
