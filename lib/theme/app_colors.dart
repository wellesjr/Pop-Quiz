import 'package:flutter/material.dart';

abstract class AppColorsBase {
// Colors Text Splash Page
  Color get textSplashPage1;
  Color get textSplashPage2;
//______________________________
// Color text Login Page
  Color get background;
  Color get sociallogin;
  Color get titleLoginPage1;
  Color get titleLoginPage2;
//______________________________
  // Color get credito;
  // Color get debito;

  // Color get totalizador;
  // Color get cardhometitle;
  // Color get cardhomesubtitle;
  // Color get cardhomemoney;
  // Color get cardhomepeople;
  // Color get stepperIndicatorPrimary;
  // Color get stepperIndicatorSegundary;
  // Color get stepperNextButton;
  // Color get stepperNextButtonDisabled;
  // Color get stepperTitle;
  // Color get stepperSubitle;
  // Color get hintTextField;
  // Color get textField;
  // Color get bottomAddWidget;
  // Color get titleEventSplit;
  // Color get menuSplitEvent;
  // Color get divider;
  // Color get valueEventSplit;
  // Color get valuefaltante;
  // Color get itenEvenSplit;
}

class AppColorsDefault implements AppColorsBase {
//Text Splash Page
//--------------------------------------------------------
  @override
  Color get textSplashPage1 => const Color(0xFF455250);
  @override
  Color get textSplashPage2 => const Color(0xFFFFFFFF);

//Colors Login Page
//--------------------------------------------------------
  @override
  Color get background => const Color(0xFFFFFFFF);
  @override
  Color get sociallogin => const Color(0xFF666666);
  @override
  Color get titleLoginPage1 => const Color(0xFFFF9E1B);
  @override
  Color get titleLoginPage2 => const Color(0xFFFF9E1B);
//--------------------------------------------------------

  // @override
  // Color get backgroundSecundary => const Color(0xFF0202b7);
  // @override
  // Color get totalizador => const Color(0xFF666666);
  // @override
  // Color get credito => const Color(0xFF40B28C);
  // @override
  // Color get debito => const Color(0xFFE83F5B);
  // @override
  // Color get cardhomemoney => const Color(0xFF666666);
  // @override
  // Color get cardhomepeople => const Color(0xFFA4B2AE);
  // @override
  // Color get cardhomesubtitle => const Color(0xFF666666);
  // @override
  // Color get cardhometitle => const Color(0xFF455250);
  // @override
  // Color get stepperIndicatorPrimary => const Color(0xFF3CAB82);
  // @override
  // Color get stepperIndicatorSegundary => const Color(0xFF666666);
  // @override
  // Color get stepperNextButton => const Color(0xFF455250);
  // @override
  // Color get stepperSubitle => const Color(0xFF455250);
  // @override
  // Color get stepperTitle => const Color(0xFF455250);
  // @override
  // Color get hintTextField => const Color(0xFF666666);
  // @override
  // Color get textField => const Color(0xFF455250);
  // @override
  // Color get stepperNextButtonDisabled => const Color(0xFF666666);
  // @override
  // Color get bottomAddWidget => const Color(0xFF40B28C);
  // @override
  // Color get titleEventSplit => const Color(0xFF455250);
  // @override
  // Color get menuSplitEvent => const Color(0xFF666666);
  // @override
  // Color get divider => const Color(0xFFC1C1C1);
  // @override
  // Color get valueEventSplit => const Color(0xFF40B28C);
  // @override
  // Color get valuefaltante => const Color(0xFFE83F5B);
  // @override
  // Color get itenEvenSplit => const Color(0xFF455250);
}
