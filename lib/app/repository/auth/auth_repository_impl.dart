import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:world_cup_album_manager/app/core/exceptions/repository_exception.dart';
import 'package:world_cup_album_manager/app/core/rest/custom_dio.dart';
import 'package:world_cup_album_manager/app/models/registar_user_model.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<void> login({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegistarUserModel registerModel) async {
    try {
      await dio.unAuth().post('/api/register', data: registerModel.toMap());
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar usuário');
    }
  }
}
