import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/ui/common/atoms/our_image.dart';
import 'package:flutter_clean_arch/ui/common/tokens/colors.dart';
import 'package:flutter_clean_arch/ui/common/tokens/our_text.dart';

class AlbumModelView extends StatelessWidget {
  final String url;
  final String title;
  final String description;

  AlbumModelView({this.url, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.9;
    final element = Container(

      height: 150,
      decoration: BoxDecoration(color: SCALE_02),
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(url: this.url,
              widthImage: 150 ,
              heightImage: 150),
          Container(
            width: 400,
            height: 200,
            padding: const EdgeInsets.all(2.0),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               H2(text: this.title),
               NormalText(text: this.description),
            ],
          )
        )
          )
        ],
      ),
    );

    return element;
  }
}