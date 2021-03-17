import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/ui/common/tokens/typography.dart';

import '../tokens/colors.dart';

class OurText extends StatelessWidget{
  final String text;
  final Color colorText;
  final double fontSize;

  OurText ({
    Key key,
    this.text,
    this.colorText,
    this.fontSize
  }
      ):super(key:key);
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      this.text,
      style: TextStyle(color: this.colorText, fontSize: this.fontSize ),
      maxLines: 4,
      minFontSize: 12,
    );
  }
}

class H1 extends StatelessWidget{
  final String text;
  H1({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: BRAND_SECONDARY);
  }
}

class H2 extends StatelessWidget{
  final String text;
  H2({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: SCALE_06,fontSize: H2_SIZE);
  }
}

class NormalText extends StatelessWidget{
  final String text;
  NormalText({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: SCALE_03,);
  }
}