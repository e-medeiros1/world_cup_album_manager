import 'dart:developer';

import 'package:world_cup_album_manager/app/core/exceptions/unauthorized_excpetion.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/view/login_view.dart';
import 'package:world_cup_album_manager/app/services/login/login_service.dart';

class LoginPresenterImpl implements LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;
  LoginPresenterImpl({required this.loginService});
  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.loginSuccess();
    } on UnauthorizedExcpetion {
      _view.loginError('Usuário ou senha inválidos');
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _view.loginError('Erro ao realizar login');
    }
  }

  @override
  set view(LoginView view) => _view = view;
}
