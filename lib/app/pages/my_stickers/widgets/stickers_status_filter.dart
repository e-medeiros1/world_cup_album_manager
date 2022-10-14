import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';

class StickersStatusFilter extends StatelessWidget {
  final String filterSelected;
  const StickersStatusFilter({Key? key, required this.filterSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            buttonStyle: context.buttonStyles.yellowButton,
            labelStyle: context.textStyles.textSecondaryFontMedium.copyWith(
              color: context.colors.primary,
            ),
            label: 'Todas',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            buttonStyle: context.buttonStyles.primaryButton,
            labelStyle: context.textStyles.textSecondaryFontMedium,
            label: 'Faltando',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            buttonStyle: context.buttonStyles.primaryButton,
            labelStyle: context.textStyles.textSecondaryFontMedium,
            label: 'Repetidas ',
          ),
        ],
      ),
    );
  }
}
