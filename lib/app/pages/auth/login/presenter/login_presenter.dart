// ignore_for_file: file_names

import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends FwcPresenter<LoginView> {
  Future<void> login(String email, String password);
}
