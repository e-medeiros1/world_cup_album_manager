import 'package:world_cup_album_manager/app/models/groups_stickers.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
}
