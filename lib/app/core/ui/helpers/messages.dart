import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  var isOpen = false;

  showError(String message) {
    showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: message,
          backgroundColor: context.colors.primary,
        ));
  }

  showInfo(String message) {
    showTopSnackBar(
        context,
        CustomSnackBar.info(
          message: message,
        ));
  }

  showSuccess(String message) {
    showTopSnackBar(
        context,
        CustomSnackBar.success(
          message: message,
        ));
  }
}
