import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:popquiz/theme/app_theme.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão $currentPage',
                  style: AppTheme.textStyles.textQuestionIndicator),
              Text('de $length',
                  style: AppTheme.textStyles.textQuestionIndicator1),
            ],
          ),
          const SizedBox(height: 16),
          ProgressIndicatorWidget(value: currentPage / length),
        ],
      ),
    );
  }
}
