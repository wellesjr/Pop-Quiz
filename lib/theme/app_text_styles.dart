import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popquiz/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get button;
  TextStyle get buttontitle;
  TextStyle get nameAppBar;
  TextStyle get title;
  TextStyle get titleAppBar;
  TextStyle get totalizador;
  TextStyle get totalizadorCredito;
  TextStyle get totalizadorDebito;
  TextStyle get cardhometitle;
  TextStyle get cardhomesubtitle;
  TextStyle get cardhomemoney;
  TextStyle get cardhomepeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSegundary;
  TextStyle get stepperNextButton;
  TextStyle get stepperTitle;
  TextStyle get stepperSubitle;
  TextStyle get hintTextField;
  TextStyle get textField;
  TextStyle get stepperNextButtonDisable;
  TextStyle get bottomAddWidget;
  TextStyle get titleEventSplit;
  TextStyle get menuSplitEvent;
  TextStyle get namePersonEventSplit;
  TextStyle get valueEventSplit;
  TextStyle get valueTotal;
  TextStyle get valueRestante;
  TextStyle get itensEventSplit;
  TextStyle get valueItensEventSplit;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get buttontitle => GoogleFonts.inter(
        color: AppTheme.colors.title,
        fontSize: 18,
        fontWeight: FontWeight.w900,
      );
  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get totalizador => GoogleFonts.inter(
        color: AppTheme.colors.totalizador,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get totalizadorCredito => GoogleFonts.inter(
        color: AppTheme.colors.credito,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get totalizadorDebito => GoogleFonts.inter(
        color: AppTheme.colors.debito,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get titleAppBar => GoogleFonts.inter(
        color: AppTheme.colors.backgroundPrimary,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get nameAppBar => GoogleFonts.montserrat(
        color: AppTheme.colors.backgroundPrimary,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get cardhomemoney => GoogleFonts.inter(
        color: AppTheme.colors.cardhomemoney,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get cardhomepeople => GoogleFonts.inter(
        color: AppTheme.colors.cardhomepeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get cardhomesubtitle => GoogleFonts.inter(
        color: AppTheme.colors.cardhomesubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get cardhometitle => GoogleFonts.inter(
        color: AppTheme.colors.cardhometitle,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get stepperIndicatorSegundary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorSegundary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButton,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get stepperSubitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperSubitle,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperTitle,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get stepperNextButtonDisable => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButtonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get bottomAddWidget => GoogleFonts.inter(
        color: AppTheme.colors.bottomAddWidget,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get titleEventSplit => GoogleFonts.montserrat(
        color: AppTheme.colors.titleEventSplit,
        fontSize: 30,
        fontWeight: FontWeight.w800,
      );
  @override
  TextStyle get menuSplitEvent => GoogleFonts.roboto(
        color: AppTheme.colors.menuSplitEvent,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get namePersonEventSplit => GoogleFonts.roboto(
        color: AppTheme.colors.menuSplitEvent,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get valueEventSplit => GoogleFonts.roboto(
        color: AppTheme.colors.valueEventSplit,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get valueRestante => GoogleFonts.roboto(
        color: AppTheme.colors.valuefaltante,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get valueTotal => GoogleFonts.roboto(
        color: AppTheme.colors.titleEventSplit,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get itensEventSplit => GoogleFonts.inter(
        color: AppTheme.colors.itenEvenSplit,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  @override
  TextStyle get valueItensEventSplit => GoogleFonts.inter(
        color: AppTheme.colors.itenEvenSplit,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
}
