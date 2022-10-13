import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';
import 'package:world_cup_album_manager/app/pages/home/widgets/status_tile.dart';
import 'package:world_cup_album_manager/app/pages/home/widgets/sticker_percent.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: LayoutBuilder(builder: (_, constrains) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/bola.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const StickerPercent(percentual: 65),
                    const SizedBox(height: 20),
                    Text('45 figurinhas', style: context.textStyles.titleWhite),
                    const SizedBox(height: 20),
                    StatusTile(
                        label: 'Todas',
                        icon: Image.asset('assets/images/all_icon.png'),
                        value: 34),
                    const SizedBox(height: 20),
                    StatusTile(
                        label: 'Faltando',
                        icon: Image.asset('assets/images/missing_icon.png'),
                        value: 500),
                    const SizedBox(height: 20),
                    StatusTile(
                        label: 'Repetidas',
                        icon: Image.asset('assets/images/repeated_icon.png'),
                        value: 30),
                    const SizedBox(height: 20),
                    Button(
                        onPressed: () {},
                        widht: MediaQuery.of(context).size.width * .9,
                        buttonStyle: context.buttonStyles.yellowOutlineButton,
                        labelStyle: context
                            .textStyles.textSecondaryFontExtraBold
                            .copyWith(color: context.colors.secondary),
                        label: 'Minhas figurinhas')
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
