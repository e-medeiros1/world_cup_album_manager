import 'package:shared_preferences/shared_preferences.dart';
import 'package:world_cup_album_manager/app/repository/auth/auth_repository.dart';
import 'package:world_cup_album_manager/app/services/login/login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository authRepository;

  LoginServiceImpl({required this.authRepository});

  @override
  Future execute({required String email, required String password}) async {
    final accessToken =
        await authRepository.login(email: email, password: password);

    final sp = await SharedPreferences.getInstance();

    sp.setString('accessToken', accessToken);
  }
}
