import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemMenu extends StatelessWidget {
  IconData icon;
  String title;
  double opacity;
  Color color;
  Function function;

  ItemMenu(
      {@required this.icon,
      @required this.title,
      this.opacity = 0.4,
      this.color = Colors.black,
      this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).splashColor,
      onTap: function ?? () {},
      child: Opacity(
        opacity: opacity,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Icon(
                icon,
                size: 50.0,
                color: color,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: color)),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
