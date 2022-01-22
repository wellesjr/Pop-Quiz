import 'package:flutter/material.dart';
import 'package:popquiz/theme/app_theme.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgressIndicatorWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppTheme.colors.progressIndicatorPrimary,
      valueColor: AlwaysStoppedAnimation<Color>(
          AppTheme.colors.progressIndicatorSecundary),
    );
  }
}
