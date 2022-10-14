// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:world_cup_album_manager/app/pages/home/view/home_view.dart';
import 'package:world_cup_album_manager/app/repository/user/user_repository.dart';

import './home_presenter.dart';

class HomePresenterImpl implements HomePresenter {
  final UserRepository userRepository;
  late HomeView _view;

  HomePresenterImpl({required this.userRepository});

  @override
  Future<void> getUserData() async {
    try {
      final user = await userRepository.getMe();
      _view.updateUser(user);
    } catch (e, s) {
      _view.error('Erro ao buscar dados do usuário');
      print('Error: $e\nStackTrace: $s');
      
    }
  }

  @override
  Future<void> logout() async {}

  @override
  set view(HomeView view) => _view = view;
}
