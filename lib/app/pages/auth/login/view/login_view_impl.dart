import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/loader.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/messages.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/login_page.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/view/login_view.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void loginError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao logar usuário');
  }

  @override
  void loginSuccess() {
    hideLoader();
    showSuccess('Sucesso ao realizar login');
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
