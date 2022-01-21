import 'package:flutter/material.dart';
import 'package:popquiz/theme/app_theme.dart';
import 'package:animated_card/animated_card.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4))
        .then((_) => Navigator.pushReplacementNamed(context, "/login"));

    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: AppTheme.gradients.backgroundSplasPage),
        child: Column(
          children: [
            Center(child: Image.asset(AppTheme.images.logo)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedCard(
                  duration: const Duration(seconds: 2),
                  direction: AnimatedCardDirection.right,
                  child: Text.rich(
                    TextSpan(
                        text: "POP",
                        style: AppTheme.textStyles.titleEventSplit,
                        children: [
                          TextSpan(
                              text: ".Quiz",
                              style: AppTheme.textStyles.titleAppBar)
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
