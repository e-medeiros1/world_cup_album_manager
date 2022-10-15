import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/rounded_button.dart';

class StickerDetailPage extends StatefulWidget {
  const StickerDetailPage({super.key});

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text('BRA 17',
                        style: context.textStyles.textPrimaryFontBold
                            .copyWith(fontSize: 22)),
                  ),
                  const Spacer(),
                  RoundedButton(onPressed: () {}, icon: Icons.remove),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '1',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(onPressed: () {}, icon: Icons.add)
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text('Brasil',
                    style: context.textStyles.textPrimaryFontRegular),
              ),
              Button.primary(
                widht: MediaQuery.of(context).size.width * .9,
                label: 'Adicionar figurinha',
                onPressed: () {},
              ),
              Button(
                  onPressed: () {},
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
