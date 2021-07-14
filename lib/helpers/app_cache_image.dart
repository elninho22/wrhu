import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class AppCacheImage extends StatelessWidget {
  String image;
  double height;
  double width;
  Color color;

  AppCacheImage({@required this.image,this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
      return Center(
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: image,
          height: height,
          width: width,
          color: color,

          placeholder: (context, url) => new Container(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => new Text(''),
        ),
      );
  }
}
