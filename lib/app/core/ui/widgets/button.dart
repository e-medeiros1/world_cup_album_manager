import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';

class Button extends StatelessWidget {
  final ButtonStyle buttonStyle;
  final TextStyle labelStyle;
  final String label;
  final double? widht;
  final double? height;
  final VoidCallback? onPressed;
  final bool outline;

  const Button(
      {super.key,
      required this.buttonStyle,
      required this.labelStyle,
      required this.label,
      this.widht,
      this.height,
      this.onPressed,
      this.outline = false});

  Button.primary({
    super.key,
    required this.label,
    this.widht,
    this.height,
    this.onPressed,
  })  : buttonStyle = ButtonStyles.instance.primaryButton,
        labelStyle = TextStyles.instance.textSecondaryFontExtraBold,
        outline = false;

  @override
  Widget build(BuildContext context) {
    final labelText =
        Text(label, style: labelStyle, overflow: TextOverflow.ellipsis);

    return SizedBox(
      width: widht,
      height: height,
      child: outline
          ? OutlinedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: labelText,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: labelText,
            ),
    );
  }
}
