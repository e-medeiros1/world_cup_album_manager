import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/theme/theme_config.dart';
import 'package:world_cup_album_manager/app/pages/splash/splash_page.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashPage(),
      },
    );
  }
}
