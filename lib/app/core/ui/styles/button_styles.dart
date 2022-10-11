import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryFontExtraBold
            .copyWith(fontSize: 14),
      );
  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsApp.instance.secondary),
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryFontExtraBold
            .copyWith(fontSize: 14),
      );

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryFontExtraBold
            .copyWith(fontSize: 14),
      );

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsApp.instance.primary),
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryFontExtraBold
            .copyWith(fontSize: 14),
      );
}

extension ButtonStylesExtension on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
