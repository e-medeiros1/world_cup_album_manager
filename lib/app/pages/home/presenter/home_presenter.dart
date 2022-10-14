import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';
import 'package:world_cup_album_manager/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends FwcPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}
