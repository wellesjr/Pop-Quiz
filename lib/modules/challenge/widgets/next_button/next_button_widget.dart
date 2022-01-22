import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popquiz/theme/app_theme.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({Key? key, required this.label, required this.onTap})
      : backgroundColor = AppTheme.colors.backgroundButton,
        fontColor = AppTheme.colors.fontColorButton,
        borderColor = AppTheme.colors.colorBorder,
        super(key: key);

  NextButtonWidget.purple({Key? key, required this.label, required this.onTap})
      : backgroundColor = AppTheme.colors.backgroundButton1,
        fontColor = AppTheme.colors.fontColorButton1,
        borderColor = AppTheme.colors.colorBorder1,
        super(key: key);

  NextButtonWidget.white({Key? key, required this.label, required this.onTap})
      : backgroundColor = AppTheme.colors.backgroundButton2,
        fontColor = AppTheme.colors.fontColorButton2,
        borderColor = AppTheme.colors.colorBorder2,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all((backgroundColor)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
