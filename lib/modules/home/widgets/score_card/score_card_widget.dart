import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/chart/chart_widget.dart';
import 'package:popquiz/theme/app_theme.dart';

class ScoreCardWidget extends StatelessWidget {
  final double percent;
  const ScoreCardWidget({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppTheme.colors.background,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(percent: percent),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text.rich(
                      TextSpan(
                          text: "Vamos começar!",
                          style: AppTheme.textStyles.titleScoreCard,
                          children: [
                            TextSpan(
                                text:
                                    "Responda os questionarios e avance no desafio!",
                                style: AppTheme.textStyles.subtitleScoreCard)
                          ]),
                      textAlign: TextAlign.left,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
