import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';

class StickerGroup extends StatelessWidget {
  const StickerGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 64,
            child: OverflowBox(
              maxWidth: double.infinity,
              maxHeight: double.infinity,
              child: ClipRect(
                child: Align(
                  alignment: const Alignment(0, -.1),
                  widthFactor: 1,
                  heightFactor: .1,
                  child: Image.asset(
                    'assets/images/flags/BRA.png',
                    cacheWidth: (MediaQuery.of(context).size.width * 3).toInt(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Brasil',
              style: context.textStyles.titleBlack.copyWith(fontSize: 26),
            ),
          ),
          GridView.builder(
            itemCount: 20,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Sticker(index: index);
            },
          ),
        ],
      ),
    );
  }
}

class Sticker extends StatelessWidget {
  final int index;
  const Sticker({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: index % 2 == 0 ? context.colors.primary : context.colors.grey,
        child: Column(children: [
          Visibility(
            visible: index % 2 == 0,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(2),
              child: Text(
                '01',
                style: context.textStyles.textSecondaryFontMedium.copyWith(
                  color: context.colors.secondary,
                ),
              ),
            ),
          ),
          Text(
            'BRA',
            style: context.textStyles.textSecondaryFontExtraBold
                .copyWith(color: index % 2 == 0 ? Colors.white : Colors.black),
          ),
          Text(
            '$index',
            style: context.textStyles.textSecondaryFontExtraBold
                .copyWith(color: index % 2 == 0 ? Colors.white : Colors.black),
          ),
        ]),
      ),
    );
  }
}
