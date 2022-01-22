import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:popquiz/theme/app_theme.dart';

class QuizCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String completed;
  final double percent;
  final VoidCallback onTap;

  const QuizCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.completed,
    required this.percent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
              BorderSide(color: AppTheme.colors.borderQuizCard)),
          color: AppTheme.colors.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(image),
            ),
            const SizedBox(height: 14),
            Text(title, style: AppTheme.textStyles.titleQuiz),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  
                  flex: 1,
                  child: Text(completed,
                      style: AppTheme.textStyles.progressQuizCard),
                ),
                Expanded(
                  flex: 2,
                  child: ProgressIndicatorWidget(value: percent),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
