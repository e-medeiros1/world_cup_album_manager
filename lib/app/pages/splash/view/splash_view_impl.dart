import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/loader.dart';
import 'package:world_cup_album_manager/app/pages/splash/splash_page.dart';

import './splash_view.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void logged(bool isLogged) {
    hideLoader();
    if (isLogged) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil('/auth/login', (route) => false);
    }
  }
}
