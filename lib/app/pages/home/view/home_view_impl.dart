import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/loader.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/messages.dart';
import 'package:world_cup_album_manager/app/models/user_model.dart';
import 'package:world_cup_album_manager/app/pages/home/home_page.dart';
import 'package:world_cup_album_manager/app/pages/home/view/home_view.dart';

abstract class HomeViewImpl extends State<HomePage>
    with Messages<HomePage>, Loader<HomePage>
    implements HomeView {
  UserModel? user;

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.presenter.getUserData();
    });
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void logoutSuccess() {
    hideLoader();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }

  @override
  void updateUser(UserModel user) {
    hideLoader();
    setState(() {
      this.user = user;
    });
  }
}
