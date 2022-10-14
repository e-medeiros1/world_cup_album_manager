import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:world_cup_album_manager/app/pages/home/home_page.dart';
import 'package:world_cup_album_manager/app/pages/home/presenter/home_presenter.dart';
import 'package:world_cup_album_manager/app/pages/home/presenter/home_presenter_impl.dart';
import 'package:world_cup_album_manager/app/repository/user/user_repository.dart';
import 'package:world_cup_album_manager/app/repository/user/user_repository_impl.dart';

class HomeRoute extends FlutterGetItPageRoute {
  const HomeRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserRepository>((i) => UserRepositoryImpl(dio: i())),
        Bind.lazySingleton<HomePresenter>((i) => HomePresenterImpl(userRepository: i()))
      ];
  @override
  WidgetBuilder get page => (context) => HomePage(presenter: context.get());
}
