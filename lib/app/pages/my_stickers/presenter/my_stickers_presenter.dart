import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/view/my_stickers_view.dart';

abstract class MyStickersPresenter extends FwcPresenter<MyStickersView> {
  Future<void> getMyAlbum();
  Future<void> statusFilter(String status);
  void countryFilter(List<String>? countries);
}
