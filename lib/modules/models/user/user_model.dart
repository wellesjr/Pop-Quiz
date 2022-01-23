import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String? name;
  final String email;
  final String id;
  final String? photoUrl;
  final double score;

  UserModel({
    this.name,
    required this.email,
    required this.id,
    this.photoUrl,
    this.score = 0,
  });

  factory UserModel.google(GoogleSignInAccount account) {
    if (account.photoUrl == null) {
      return UserModel(
          name: account.displayName,
          email: account.email,
          id: account.id,
          photoUrl:
              "https://www.lacazmartins.com.br/wp-content/uploads/2017/05/sem-foto-oficial.png");
    }
    return UserModel(
        name: account.displayName,
        email: account.email,
        id: account.id,
        photoUrl: account.photoUrl);
  }
}
