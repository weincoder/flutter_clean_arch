import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/config/usecase_config.dart';
import 'package:flutter_clean_arch/ui/common/molecules/our_footer.dart';
import 'package:flutter_clean_arch/ui/common/molecules/our_header.dart';
import 'package:flutter_clean_arch/ui/helpers/async_snapshot_album_helper.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    UseCaseConfig _albumConfig = UseCaseConfig();
    return Scaffold(
        backgroundColor: Colors.white ,
        appBar:OurAppBar () ,
        body: Container(

          child: FutureBuilder(
              key: Key('futureBuilder'),
              future: _albumConfig.getAlbumUseCase.getAlbumByID('180'),
              builder: (BuildContext context, AsyncSnapshot snapshot) =>
                  asyncSnapshotAlbumHelper(snapshot))
        ),
        bottomNavigationBar: OurFooter() ,
    );
  }
}
