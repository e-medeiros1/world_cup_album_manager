import 'package:world_cup_album_manager/app/pages/splash/view/splash_view.dart';

import './splash_presenter.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;

  @override
  Future<void> checkLogin() async {
    _view.showLoader();
    await Future.delayed(const Duration(seconds: 2));
    _view.logged(true);
  }

  @override
  set view(view) => _view = view;
}
