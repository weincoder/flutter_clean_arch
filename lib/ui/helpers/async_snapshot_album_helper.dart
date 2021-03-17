import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/ui/common/atoms/our_text.dart';
import 'package:flutter_clean_arch/ui/model_view/album/album_model_view.dart';
Widget asyncSnapshotAlbumHelper(AsyncSnapshot snapshot ) {
  Widget element = Container();
  if (snapshot.hasError){
    element = H2 (text: 'Error : ${snapshot.error.toString()}');
  }else if (!snapshot.hasData){
    element = Center(
      child:  CircularProgressIndicator() ,
    );
  }else {
    element =  AlbumModelView(
      description:   'Album id :' + snapshot.data.id.toString(),
      title: snapshot.data.title,
      url:snapshot.data.thumbnailUrl,
    ) ;
  }
  return element;
}
