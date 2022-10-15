import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';
import 'package:world_cup_album_manager/app/pages/my_stickers/presenter/my_stickers_presenter.dart';

class StickersStatusFilter extends StatelessWidget {
  final String filterSelected;
  const StickersStatusFilter({Key? key, required this.filterSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.get<MyStickersPresenter>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('all');
            },
            buttonStyle: filterSelected == 'all'
                ? context.buttonStyles.yellowButton
                : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'all'
                ? context.textStyles.textSecondaryFontMedium.copyWith(
                    color: context.colors.primary,
                  )
                : context.textStyles.textSecondaryFontMedium,
            label: 'Todas',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('missing');
            },
            buttonStyle: filterSelected == 'missing'
                ? context.buttonStyles.yellowButton
                : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'missing'
                ? context.textStyles.textSecondaryFontMedium.copyWith(
                    color: context.colors.primary,
                  )
                : context.textStyles.textSecondaryFontMedium,
            label: 'Faltando',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('repeated');
            },
            buttonStyle: filterSelected == 'repeated'
                ? context.buttonStyles.yellowButton
                : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'repeated'
                ? context.textStyles.textSecondaryFontMedium.copyWith(
                    color: context.colors.primary,
                  )
                : context.textStyles.textSecondaryFontMedium,
            label: 'Repetidas ',
          ),
        ],
      ),
    );
  }
}
