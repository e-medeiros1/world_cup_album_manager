import 'package:world_cup_album_manager/app/models/register_user_model.dart';

abstract class AuthRepository {
  Future register(RegisterUserModel registerModel);
  Future login({required String email, required String password});
  Future logout(); 
}
