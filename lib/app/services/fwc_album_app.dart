import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/theme/theme_config.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/login_page.dart';
import 'package:world_cup_album_manager/app/pages/home/home_page.dart';
import 'package:world_cup_album_manager/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:world_cup_album_manager/app/pages/splash/splash_page.dart';
import 'package:world_cup_album_manager/app/pages/splash/view/splash_route.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
