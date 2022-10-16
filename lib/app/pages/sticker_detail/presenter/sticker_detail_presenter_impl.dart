// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:world_cup_album_manager/app/models/user_sticker_model.dart';
import 'package:world_cup_album_manager/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:world_cup_album_manager/app/repository/stickers/stickers_repository.dart';
import 'package:world_cup_album_manager/app/services/sticker/find_sticker_service.dart';

import '../../../models/sticker_model.dart';
import './sticker_detail_presenter.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late StickerDetailView _view;
  final FindStickerService findStickerService;
  final StickersRepository stickersRepository;
  StickerModel? sticker;
  UserStickerModel? stickerUser;
  int amount = 0;

  StickerDetailPresenterImpl({
    required this.findStickerService,
    required this.stickersRepository,
  });

  @override
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  }) async {
    this.stickerUser = stickerUser;

    if (stickerUser == null) {
      sticker = await findStickerService.execute(countryCode, stickerNumber);
    }
    bool hasSticker = stickerUser != null;

    if (hasSticker) {
      amount = stickerUser.duplicate + 1;
    }

    _view.screenLoaded(
        hasSticker, countryCode, stickerNumber, countryName, amount);
  }

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  void decrementAmount() {
    if (amount > 1) {
      _view.updateAmount(--amount);
    }
  }

  @override
  void incrementAmount() {
    _view.updateAmount(++amount);
  }

  @override
  Future<void> saveSticker() async {
    try {
      _view.showLoader();
      if (stickerUser == null) {
        await stickersRepository.registerUserSticker(sticker!.id, amount);
      } else {
        await stickersRepository.updateUserSticker(
            stickerUser!.idSticker, amount);
      }
      _view.saveSuccess();
    } catch (e) {
      _view.error('Erro ao cadastrar ou atualizar figurinha ');
    }
  }

  @override
  Future<void> deleteSticker() async {
    _view.showLoader();
    if (stickerUser != null) {
      await stickersRepository.updateUserSticker(stickerUser!.idSticker, 0);
    }
    _view.saveSuccess();
  }
}
