import 'package:flutter/material.dart';

Widget RodapeCard(BuildContext context, {String totalComentario, String totalCurtir}){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: <Widget>[
            Text(totalCurtir,style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w700
            ),),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.favorite,color: Colors.redAccent,),
            ),

            Text(totalComentario,style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w700
            ),),

            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Icon(Icons.chat,color: Colors.black87,),
            ),


          ],
        ),
      ),
    ],
  );
}