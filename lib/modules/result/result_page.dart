import 'package:flutter/material.dart';
import 'package:popquiz/modules/challenge/widgets/next_button/next_button_widget.dart';
import 'package:popquiz/theme/app_theme.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppTheme.images.trophy),
            Column(
              children: [
                const SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: 'Parabéns!',
                    style: AppTheme.textStyles.titleResultPage,
                    children: [
                      TextSpan(
                        text: '\n\n\nVocê concluiu o desafio ',
                        style: AppTheme.textStyles.subtitleResultPage2,
                      ),
                      TextSpan(
                        text: '\n$title',
                        style: AppTheme.textStyles.subtitleResultPage,
                      ),
                      TextSpan(
                        text: '\nVocê acertou $result de $length perguntas.',
                        style: AppTheme.textStyles.subtitleResultPage2,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.purple(
                          label: 'Share',
                          onTap: () {
                            Share.share('Pop.Quiz - Resultado do Quiz: $title\n'
                                'Acertos: $result / $length');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.white(
                            label: 'Inicio',
                            onTap: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
