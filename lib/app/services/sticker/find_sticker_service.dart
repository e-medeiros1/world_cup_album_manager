import 'package:world_cup_album_manager/app/models/sticker_model.dart';

abstract class FindStickerService {
  Future<StickerModel> execute(String countryCode, String stickerNumber); 
}
