// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/rounded_button.dart';
import 'package:world_cup_album_manager/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';

import 'view/sticker_detail_view_impl.dart';

class StickerDetailPage extends StatefulWidget {
  StickerDetailPresenter presenter;

  StickerDetailPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends StickerDetailViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(hasSticker
                  ? 'assets/images/sticker.png'
                  : 'assets/images/sticker_pb.png'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text('$countryCode $stickerNumber',
                        style: context.textStyles.textPrimaryFontBold
                            .copyWith(fontSize: 22)),
                  ),
                  const Spacer(),
                  RoundedButton(
                      onPressed: () {
                        widget.presenter.decrementAmount();
                      },
                      icon: Icons.remove),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '$amount',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(
                    onPressed: () {
                      widget.presenter.incrementAmount();
                    },
                    icon: Icons.add,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(countryName,
                    style: context.textStyles.textPrimaryFontRegular),
              ),
              const SizedBox(
                height: 20,
              ),
              Button.primary(
                widht: MediaQuery.of(context).size.width * .9,
                label:
                    hasSticker ? 'Atualizar figurinha' : 'Adicionar figurinha',
                onPressed: () {
                  widget.presenter.saveSticker();
                },
              ),
              Button(
                  onPressed: () {
                    widget.presenter.deleteSticker();
                  },
                  widht: MediaQuery.of(context).size.width * .9,
                  outline: true,
                  buttonStyle: context.buttonStyles.primaryOutlineButton
                      .copyWith(
                          side: MaterialStateProperty.all(BorderSide(
                              width: 1, color: context.colors.primary))),
                  labelStyle:
                      context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                  label: 'Excluir figurinha'),
            ],
          ),
        ),
      ),
    );
  }
}
