import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/ui/common/atoms/our_image.dart';
import 'package:flutter_clean_arch/ui/common/tokens/colors.dart';
import 'package:flutter_clean_arch/ui/common/atoms/our_text.dart';

import '../../common/atoms/our_text.dart';

class AlbumModelView extends StatelessWidget {
  final String url;
  final String title;
  final String description;

  AlbumModelView({this.url, this.title, this.description});
  @override
  Widget build(BuildContext context) {
    final element = Container(
      height: 180,
      decoration: BoxDecoration(color: SCALE_02),
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(url: this.url,
              widthImage: 180 ,
              heightImage: 180),
          Column(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                  child:
                      H2(text:this.title),
                ) ,
              Container(
                padding: EdgeInsets.all(10),
                child: NormalText(text:this.description),
              ) ,
            ],
        )
        ],
      ),
    );

    return element;
  }
}