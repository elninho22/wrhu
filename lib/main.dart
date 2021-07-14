import 'package:br/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagga',
      theme: ThemeData(
        primaryColor: Color(0xFF015FFF),
        brightness: Brightness.light,
        splashColor: Color(0xFF015FFF).withOpacity(0.4),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Home(),
        '/home': (context) => Home(),
      },
    );
  }
}
