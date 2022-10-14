import 'package:world_cup_album_manager/app/models/user_model.dart';

abstract class HomeView {
  void updateUser(UserModel user);
  void error(String message);
  void showLoader();
  void logoutSuccess();
}
