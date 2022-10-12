import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:world_cup_album_manager/app/core/rest/custom_dio.dart';
import 'package:world_cup_album_manager/app/core/ui/theme/theme_config.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/login_page.dart';
import 'package:world_cup_album_manager/app/pages/auth/register/view/register_route.dart';
import 'package:world_cup_album_manager/app/pages/home/home_page.dart';
import 'package:world_cup_album_manager/app/pages/splash/view/splash_route.dart';
import 'package:world_cup_album_manager/app/repository/auth/auth_repository.dart';
import 'package:world_cup_album_manager/app/repository/auth/auth_repository_impl.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
