// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:world_cup_album_manager/app/core/exceptions/repository_exception.dart';
import 'package:world_cup_album_manager/app/core/rest/custom_dio.dart';
import 'package:world_cup_album_manager/app/models/user_model.dart';
import 'package:world_cup_album_manager/app/repository/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio dio;
  
  UserRepositoryImpl({
    required this.dio,
  });
  @override
  Future<UserModel> getMe() async {
    try {
      final result = await dio.auth().get('/api/me');
      return UserModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar dados de usuário logado', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar dados de usuário logado');
    }
  }
}
