import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';

class StatusTile extends StatelessWidget {
  final String label;
  final Image icon;
  final int value;
  const StatusTile(
      {super.key,
      required this.label,
      required this.icon,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: ListTile(
        leading: SizedBox(
          width: 46,
          child: CircleAvatar(
              radius: 46, backgroundColor: context.colors.grey, child: icon),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(label,
            style: context.textStyles.textPrimaryFontRegular
                .copyWith(color: Colors.white)),
        trailing: Text('$value',
            style: context.textStyles.textPrimaryFontMedium
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
