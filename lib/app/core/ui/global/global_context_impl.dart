// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';

import 'package:world_cup_album_manager/app/repository/auth/auth_repository.dart';

import './global_context.dart';

class GlobalContextImpl implements GlobalContext {
  final GlobalKey<NavigatorState> navigatorKey;
  final AuthRepository authRepository;

  GlobalContextImpl({required this.navigatorKey, required this.authRepository});

  @override
  Future<void> loginExprire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    showTopSnackBar(
      navigatorKey.currentState!.context,
      CustomSnackBar.error(
        message: 'Login Expirado',
        backgroundColor: ColorsApp.instance.primary,
      ),
      overlayState: navigatorKey.currentState!.overlay
    );
    navigatorKey.currentState!
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }
}
