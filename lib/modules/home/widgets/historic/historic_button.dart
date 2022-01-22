import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popquiz/theme/app_theme.dart';

class HistoricButton extends StatelessWidget {
  final String label;
  HistoricButton({Key? key, required this.label})
      : assert(['Ultimo Quiz', 'Historico de resposta'].contains(label)),
        super(key: key);

  final config = {
    'Ultimo Quiz': {
      'color': AppTheme.colors.backgroundButton2,
      'borderColor': AppTheme.colors.colorBorder1,
      'fontColor': AppTheme.colors.titleQuiz,
    },
    'Historico de resposta': {
      'color': AppTheme.colors.backgroundButton2,
      'borderColor': AppTheme.colors.colorBorder1,
      'fontColor': AppTheme.colors.titleQuiz,
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(BorderSide(color: borderColor)),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: fontColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
