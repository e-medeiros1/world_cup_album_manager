import 'dart:math';

import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';

class StickerPercent extends StatelessWidget {
  final int percentual;
  const StickerPercent({super.key, required this.percentual});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: context.colors.grey,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              '$percentual%',
              style: context.textStyles.titlePrimaryColor,
            ))),
        SizedBox(
          width: 110,
          height: 110,
          child: Transform.rotate(
            angle: -pi / 2.5,
            child: CircularProgressIndicator(
              value: percentual / 100,
              color: Colors.white,
              backgroundColor: Colors.white.withOpacity(0.5),
              strokeWidth: 5,
            ),
          ),
        )
      ],
    );
  }
}
