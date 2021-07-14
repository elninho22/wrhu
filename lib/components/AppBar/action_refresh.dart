import 'package:flutter/material.dart';

class ActionRefresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FlatButton(
      onPressed: (){},
      splashColor: Theme.of(context).splashColor,
      child: SizedBox(
        height: 40.0,
        child: Icon(
          Icons.refresh,
          size: 35.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
