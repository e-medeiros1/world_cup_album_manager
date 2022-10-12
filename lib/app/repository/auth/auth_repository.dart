import 'package:world_cup_album_manager/app/models/registar_user_model.dart';

abstract class AuthRepository {
  Future<void> register(RegistarUserModel registerModel);
  Future<void> login({required String email, required String password});
  Future<void> logout(); 
}
