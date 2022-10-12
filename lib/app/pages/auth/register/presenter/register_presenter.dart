import 'package:world_cup_album_manager/app/core/mvp/fwc_presenter.dart';
import 'package:world_cup_album_manager/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends FwcPresenter<RegisterView> {

   Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation
   });
}
