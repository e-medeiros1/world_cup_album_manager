import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';

abstract class SplashPresenter extends FwcPresenter {
  Future<void> checkLogin();
}
