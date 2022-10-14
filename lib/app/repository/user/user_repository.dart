import 'package:world_cup_album_manager/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}
