import 'package:world_cup_album_manager/app/models/groups_stickers.dart';

import '../../models/register_sticker_model.dart';
import '../../models/sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(
      String stickerCode, String stickerNumer);
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);

  Future<void> registerUserSticker(int stickerId, int amount);
  Future<void> updateUserSticker(int stickerId, int amount);
}
