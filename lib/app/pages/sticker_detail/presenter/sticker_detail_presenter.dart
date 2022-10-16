import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';
import 'package:world_cup_album_manager/app/models/user_sticker_model.dart';

import '../view/sticker_detail_view.dart';

abstract class StickerDetailPresenter extends FwcPresenter<StickerDetailView> {
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  });

  void incrementAmount();
  void decrementAmount();

  Future<void> saveSticker();
  Future<void> deleteSticker();
}
