abstract class AppImages {
  String get google;
  String get logo;
  String get imagelogin;
  String get trophy;
}

class AppImagesDefault implements AppImages {
  @override
  String get logo => 'assets/images/logo.png';
  @override
  String get imagelogin => "assets/images/interrogacao.png";
  @override
  String get google => "assets/images/google.png";
  @override
  String get trophy => "assets/images/trophy.png";
}
