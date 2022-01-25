import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popquiz/theme/app_theme.dart';

abstract class AppTextStyles {
//Stilo de fonte Splash Page
////-----------------------------------
  TextStyle get textSplashPage1;
  TextStyle get textSplashPage2;
////-----------------------------------
//Style fonts Login Page
////-----------------------------------
  TextStyle get sociallogin;
  TextStyle get titleLoginPage;
  TextStyle get titleLoginPage2;
////-----------------------------------
//Styles fonts Appbar Home Page
////-----------------------------------
  TextStyle get nameAppBar;
  TextStyle get textAppbar;
////-----------------------------------
//Styles fonts Scorecard
////-----------------------------------
  TextStyle get titleScoreCard;
  TextStyle get subtitleScoreCard;
////-----------------------------------
//Styles fonts Chart
////-----------------------------------
  TextStyle get textChart;
////-----------------------------------
//Styles fonts Question Indicator
////-----------------------------------
  TextStyle get textQuestionIndicator;
  TextStyle get textQuestionIndicator1;
////-----------------------------------
//Styles fonts Answers
////-----------------------------------
  TextStyle get correct;
  TextStyle get notSelected;
  TextStyle get wrong;
////-----------------------------------
//Styles fonts Quiz
////-----------------------------------
  TextStyle get titleQuiz;
  TextStyle get progressQuizCard;
////-----------------------------------
//Styles fonts Result Page
////-----------------------------------
  TextStyle get titleResultPage;
  TextStyle get subtitleResultPage;
  TextStyle get subtitleResultPage2;
}

class AppTextStylesDefault implements AppTextStyles {
////-----------------------------------------------------------------------
//Styles fonts Splash Page
////-----------------------------------------------------------------------
  @override
  TextStyle get textSplashPage1 => GoogleFonts.montserrat(
      color: AppTheme.colors.textSplashPage1,
      fontSize: 36,
      fontWeight: FontWeight.w700);
  @override
  TextStyle get textSplashPage2 => GoogleFonts.inter(
      color: AppTheme.colors.textSplashPage2,
      fontSize: 26,
      fontWeight: FontWeight.w700);
////-------------------------------------------------------------------------
// Styles fonts Login Page
////-------------------------------------------------------------------------
  @override
  TextStyle get sociallogin => GoogleFonts.inter(
      color: AppTheme.colors.sociallogin,
      fontSize: 16,
      fontWeight: FontWeight.w500);
  @override
  TextStyle get titleLoginPage => GoogleFonts.montserrat(
      color: AppTheme.colors.titleLoginPage1,
      fontSize: 40,
      fontWeight: FontWeight.w700);
  @override
  TextStyle get titleLoginPage2 => GoogleFonts.inter(
      color: AppTheme.colors.titleLoginPage2,
      fontSize: 18,
      fontWeight: FontWeight.w900);
////-------------------------------------------------------------------------
//Styles fonts Appbar Home Page
////-------------------------------------------------------------------------
  @override
  TextStyle get nameAppBar => GoogleFonts.montserrat(
      color: AppTheme.colors.nameAppbar,
      fontSize: 14,
      fontWeight: FontWeight.w700);
  @override
  TextStyle get textAppbar => GoogleFonts.inter(
      color: AppTheme.colors.textSplashPage2,
      fontSize: 16,
      fontWeight: FontWeight.w700);
////-----------------------------------------------------------------------------
//Styles fonts Score Card
////-----------------------------------------------------------------------------
  @override
  TextStyle get subtitleScoreCard => GoogleFonts.notoSans(
      color: AppTheme.colors.subtitleScoreCard,
      fontSize: 13,
      fontWeight: FontWeight.normal);
  @override
  TextStyle get titleScoreCard => GoogleFonts.notoSans(
      color: AppTheme.colors.titleScoreCard,
      fontSize: 18,
      fontWeight: FontWeight.w600);
////------------------------------------------------------------------------------
//Styles fonts Chart
////------------------------------------------------------------------------------
  @override
  TextStyle get textChart => GoogleFonts.notoSans(
      color: AppTheme.colors.textChart,
      fontSize: 18,
      fontWeight: FontWeight.w600);
////------------------------------------------------------------------------------
//Styles fonts Question Indicator
////------------------------------------------------------------------------------
  @override
  TextStyle get textQuestionIndicator => GoogleFonts.notoSans(
      color: AppTheme.colors.questionIndicator,
      fontSize: 13,
      fontWeight: FontWeight.normal);
  @override
  TextStyle get textQuestionIndicator1 => GoogleFonts.notoSans(
      color: AppTheme.colors.questionIndicator,
      fontSize: 13,
      fontWeight: FontWeight.w900);
////------------------------------------------------------------------------------
//Styles fonts Answer
////------------------------------------------------------------------------------
  @override
  TextStyle get correct => GoogleFonts.notoSans(
      color: AppTheme.colors.textCorrect,
      fontSize: 13,
      fontWeight: FontWeight.w500);
  @override
  TextStyle get wrong => GoogleFonts.notoSans(
      color: AppTheme.colors.textwrong,
      fontSize: 13,
      fontWeight: FontWeight.w500);
  @override
  TextStyle get notSelected => GoogleFonts.notoSans(
      color: AppTheme.colors.notSelected,
      fontSize: 13,
      fontWeight: FontWeight.normal);
////------------------------------------------------------------------------------
//Styles fonts Quiz Card
////------------------------------------------------------------------------------
  @override
  TextStyle get titleQuiz => GoogleFonts.notoSans(
      color: AppTheme.colors.titleQuiz,
      fontSize: 15,
      fontWeight: FontWeight.w700);
  @override
  TextStyle get progressQuizCard => GoogleFonts.notoSans(
      color: AppTheme.colors.titleQuiz,
      fontSize: 11,
      fontWeight: FontWeight.w400);
////------------------------------------------------------------------------------
//Styles fonts Result Page
////------------------------------------------------------------------------------
  @override
  TextStyle get subtitleResultPage => GoogleFonts.notoSans(
      color: AppTheme.colors.subtitleResultPage,
      fontSize: 22,
      fontWeight: FontWeight.w800);
  @override
  TextStyle get subtitleResultPage2 => GoogleFonts.notoSans(
      color: AppTheme.colors.subtitleResultPage2,
      fontSize: 16,
      fontWeight: FontWeight.w400);
  @override
  TextStyle get titleResultPage => GoogleFonts.notoSans(
      color: AppTheme.colors.titleResultPage,
      fontSize: 40,
      fontWeight: FontWeight.w700);
}
