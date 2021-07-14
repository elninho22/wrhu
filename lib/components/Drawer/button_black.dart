import 'package:flutter/material.dart';
class ButtonBlack extends StatelessWidget {
  const ButtonBlack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: FlatButton.icon(
        splashColor: Theme.of(context).splashColor,
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text("Back",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Theme.of(context).primaryColor)),
        color: Colors.transparent,
      ),
    );
  }
}