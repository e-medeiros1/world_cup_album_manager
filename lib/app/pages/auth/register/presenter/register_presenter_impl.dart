import 'dart:developer';

import 'package:world_cup_album_manager/app/models/register_user_model.dart';
import 'package:world_cup_album_manager/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:world_cup_album_manager/app/pages/auth/register/view/register_view.dart';
import 'package:world_cup_album_manager/app/repository/auth/auth_repository.dart';


class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late final RegisterView _view;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log('Erro ao cadastrar usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
