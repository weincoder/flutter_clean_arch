import 'package:flutter/material.dart';
class OurImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;
  OurImage({this.url,this.heightImage,this.widthImage});
  @override
  Widget build(BuildContext context) {
    Widget element =  Image.network(
      url,
      width:widthImage ,
      height: heightImage,
    );
    return element;
  }

}