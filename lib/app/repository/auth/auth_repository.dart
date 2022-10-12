import 'package:world_cup_album_manager/app/models/register_user_model.dart';

abstract class AuthRepository {
  Future<void> register(RegisterUserModel registerModel);
  Future<void> login({required String email, required String password});
  Future<void> logout(); 
}
