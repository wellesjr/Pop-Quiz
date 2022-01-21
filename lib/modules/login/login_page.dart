import 'package:flutter/material.dart';
import 'package:popquiz/modules/login/controllers/login_controller.dart';
import 'package:popquiz/modules/login/controllers/login_service.dart';
import 'package:popquiz/modules/login/controllers/login_state.dart';
import 'package:popquiz/modules/login/widgets/botton_login_widget.dart';
import 'package:popquiz/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImpl(),
        onUpdate: () {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            Navigator.pushReplacementNamed(context, "/homepage",
                arguments: user);
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        bottom: true,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: Center(
                        child: Text("Está Preparado?",
                            style: AppTheme.textStyles.titleLoginPage)),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: 400,
                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 80,
                        child: Image.asset(AppTheme.images.imagelogin)),
                    const SizedBox(width: 25),
                    Expanded(
                      child: Text(
                          "Faça seu login com sua conta google e aceite o desafio!",
                          style: AppTheme.textStyles.titleLoginPage2),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Column(
            children: [
              if (controller.state is LoginStateLoading) ...[
                const CircularProgressIndicator(),
              ] else if (controller.state is LoginStateFailure) ...[
                Text((controller.state as LoginStateFailure).message)
              ] else
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 100),
                  child: BottomLoginPage(
                    label: "Entre com a conta Google",
                    image: AppTheme.images.google,
                    ontap: () {
                      controller.googleSignIn();
                    },
                  ),
                )
            ],
          )
        ]),
      ),
    );
  }
}
