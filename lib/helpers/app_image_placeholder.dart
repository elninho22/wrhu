import 'package:br/helpers/app_cache_image.dart';
import 'package:flutter/material.dart';

class AppImagePlaceholder extends StatelessWidget {
  String urlImage;
  double height;
  double width;
  Color color;

  AppImagePlaceholder({this.urlImage, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return urlImage != null
        ? AppCacheImage(
            image: urlImage,
            height: height,
            width: width,
            color: color,
          )
        : Container();
  }
}
