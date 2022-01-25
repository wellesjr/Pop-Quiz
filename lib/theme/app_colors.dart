import 'package:flutter/material.dart';

abstract class AppColorsBase {
////--------------------------
// Colors Text Splash Page
////--------------------------
  Color get textSplashPage1;
  Color get textSplashPage2;
////--------------------------
// Color text Login Page
////--------------------------
  Color get background;
  Color get sociallogin;
  Color get titleLoginPage1;
  Color get titleLoginPage2;
////----------------------------
// Colors text Appbar Home Page
////----------------------------
  Color get nameAppbar;
  Color get textAppbar;
////----------------------------
// Colors text Score Card
////----------------------------
  Color get titleScoreCard;
  Color get subtitleScoreCard;
////----------------------------
// Colors Chart
////----------------------------
  Color get textChart;
  Color get animatorPrimary;
  Color get animatorSegundary;
////----------------------------
// Colors QuizCard
////----------------------------
  Color get borderQuizCard;
////----------------------------
//Color Question Indicator
////----------------------------
  Color get questionIndicator;
////----------------------------
// Colors NextButton
////----------------------------
  Color get backgroundButton;
  Color get backgroundButton1;
  Color get backgroundButton2;
  Color get colorBorder;
  Color get colorBorder1;
  Color get colorBorder2;
  Color get fontColorButton;
  Color get fontColorButton1;
  Color get fontColorButton2;
////----------------------------
// Colors Answer
////----------------------------
  Color get borderCardCorrect;
  Color get borderCardWrong;
  Color get borderRightCorrect;
  Color get borderRightWrong;
  Color get colorCardRightWrong;
  Color get colorCardRightCorrect;
  Color get colorRightcorrect;
  Color get colorRightwrong;
  Color get notSelected;
  Color get textCorrect;
  Color get textwrong;

////----------------------------
// Colors Quiz
////----------------------------
  Color get titleQuiz;
////----------------------------
// Colors Progress Indicator
////----------------------------
  Color get progressIndicatorPrimary;
  Color get progressIndicatorSecundary;
////--------------------------------------------------------
//Colors Result Page
////--------------------------------------------------------
  Color get titleResultPage;
  Color get subtitleResultPage;
  Color get subtitleResultPage2;
}

class AppColorsDefault implements AppColorsBase {
////--------------------------------------------------------
//Color Splash Page
////--------------------------------------------------------
  @override
  Color get textSplashPage1 => const Color(0xFF000000);
  @override
  Color get textSplashPage2 => const Color(0xFFFFFFFF);

////--------------------------------------------------------
//Colors Login Page
////--------------------------------------------------------
  @override
  Color get background => const Color(0xFFFFFFFF);
  @override
  Color get sociallogin => const Color(0xFF666666);
  @override
  Color get titleLoginPage1 => const Color(0xFFFF9E1B);
  @override
  Color get titleLoginPage2 => const Color(0xFFFF9E1B);

////-------------------------------------------------------
// Colors text Appbar Home Page
////-------------------------------------------------------
  @override
  Color get nameAppbar => const Color(0xFFFFFFFF);
  @override
  Color get textAppbar => const Color(0xFFFFFFFF);
////-------------------------------------------------------
// Colors text Score Card
////-------------------------------------------------------
  @override
  Color get subtitleScoreCard => const Color(0xFF6E6680);
  @override
  Color get titleScoreCard => const Color(0xFF000000);
////-------------------------------------------------------
// Colors text Chart
////-------------------------------------------------------
  @override
  Color get textChart => const Color(0xFF000000);
  @override
  Color get animatorPrimary => const Color(0xFFFF9E1B);
  @override
  Color get animatorSegundary => const Color(0xFF000000);
////-------------------------------------------------------
// Colors QuizCard
////-------------------------------------------------------
  @override
  Color get borderQuizCard => const Color(0xFFE1E1E6);
////-------------------------------------------------------
// Colors Question Indicator
////-------------------------------------------------------
  @override
  Color get questionIndicator => const Color(0xFF6E6680);
////-------------------------------------------------------
// Colors NextButton
////--------------------------------------------------------
  @override
  Color get backgroundButton => const Color(0xFFE8891C);
  @override
  Color get backgroundButton1 => const Color(0xFFE25303);
  @override
  Color get backgroundButton2 => const Color(0xFFFFFFFF);
  @override
  Color get colorBorder => const Color(0xFFFF9E1B);
  @override
  Color get colorBorder1 => const Color(0xFFFF9E1B);
  @override
  Color get colorBorder2 => const Color(0xFFE1E1E6);
  @override
  Color get fontColorButton => const Color(0xFFFFFFFF);
  @override
  Color get fontColorButton1 => const Color(0xFFFFFFFF);
  @override
  Color get fontColorButton2 => const Color(0xFF6E6680);

////-------------------------------------------------------
// Colors Answers
////-------------------------------------------------------
  @override
  Color get borderCardCorrect => const Color(0xFFB8DBCB);
  @override
  Color get borderCardWrong => const Color(0xFFE5C5CF);
  @override
  Color get borderRightCorrect => const Color(0xFFE1F5EC);
  @override
  Color get borderRightWrong => const Color(0xFFF5E9EC);
  @override
  Color get colorCardRightCorrect => const Color(0xFFE1F5EC);
  @override
  Color get colorCardRightWrong => const Color(0xFFF5E9EC);
  @override
  Color get colorRightcorrect => const Color(0xFF40B28C);
  @override
  Color get colorRightwrong => const Color(0xFFCC3750);
  @override
  Color get notSelected => const Color(0xFF6E6680);
  @override
  Color get textCorrect => const Color(0xFF04D361);
  @override
  Color get textwrong => const Color(0xFFCC3750);

////-------------------------------------------------------
// Colors Quiz
////-------------------------------------------------------
  @override
  Color get titleQuiz => const Color(0xFF666666);

////-------------------------------------------------------
// Colors Progress Indicator Primary
////-------------------------------------------------------
  @override
  Color get progressIndicatorPrimary => const Color(0xffcccccc);
  @override
  Color get progressIndicatorSecundary => const Color(0xFFFF9E1B);

////-------------------------------------------------------
// Colors Result Page
////-------------------------------------------------------
  @override
  Color get titleResultPage => const Color(0xFF000000);
  @override
  Color get subtitleResultPage => const Color(0xFF6E6680);
  @override
  Color get subtitleResultPage2 => const Color(0xFF6E6680);
}
