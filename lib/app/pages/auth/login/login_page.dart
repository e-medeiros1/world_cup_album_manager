// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/button_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/colors_app.dart';
import 'package:world_cup_album_manager/app/core/ui/styles/text_styles.dart';
import 'package:world_cup_album_manager/app/core/ui/widgets/button.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:world_cup_album_manager/app/pages/auth/login/view/login_view_impl.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter presenter;

  const LoginPage({super.key, required this.presenter});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/background_login.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          (MediaQuery.of(context).size.width > 350 ? .30 : .25),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Center(
                            child: Text('Login',
                                style: context.textStyles.titleWhite))),
                    TextFormField(
                      controller: emailEC,
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('Email'),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('E-mail obrigatório'),
                        Validatorless.email('E-mail inválido'),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordEC,
                      obscureText: true,
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('Senha'),
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.min(6, 'Senha inválida'),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    Button(
                        widht: MediaQuery.of(context).size.width * .9,
                        onPressed: () {
                          showLoader();
                          final formValid =
                              formKey.currentState?.validate() ?? false;
                          if (formValid) {
                            widget.presenter
                                .login(emailEC.text, passwordEC.text);
                          }
                        },
                        buttonStyle: context.buttonStyles.yellowButton,
                        labelStyle: context
                            .textStyles.textSecondaryFontExtraBoldPrimaryColor,
                        label: 'Entrar'),
                  ]),
                ),
                SliverFillRemaining(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text.rich(
                          TextSpan(
                            text: 'Não possui uma conta? ',
                            children: [
                              TextSpan(
                                text: 'Cadastre-se',
                                style: context
                                    .textStyles.textSecondaryFontMedium
                                    .copyWith(color: context.colors.secondary),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context)
                                      .pushNamed('/auth/register'),
                              ),
                            ],
                          ),
                          style: context.textStyles.textSecondaryFontMedium
                              .copyWith(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
