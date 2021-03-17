
import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/domain/models/album/gateway/alubm_gateway.dart';

class GetAlbumUseCase {
  final AlbumGateway _albumGateway;
  GetAlbumUseCase(this._albumGateway);
  Future<Album> getAlbumByID (String id) async{
    return this._albumGateway.getByID(id);
  }
  Future<List<Album>> getAll () async{
    return this._albumGateway.getAll();
  }
}