import 'package:flutter/material.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/loader.dart';
import 'package:world_cup_album_manager/app/core/ui/helpers/messages.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_splash.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .08),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: MediaQuery.of(context).size.height * .25,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .19),
                child: Button(
                  widht: MediaQuery.of(context).size.width * .9,
                  onPressed: () {},
                  buttonStyle: context.buttonStyles.yellowButton,
                  labelStyle:
                      context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                  label: 'Acessar',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/bandeiras.png')),
            ),
          ],
        ),
      ),
    );
  }
}
