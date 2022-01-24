import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String? name;
  final String id;
  final String? photoUrl;
  final int? score;

  UserModel({
    this.name,
    required this.id,
    this.photoUrl,
    this.score = 2,
  });

  factory UserModel.google(GoogleSignInAccount account) {
    if (account.photoUrl == null) {
      return UserModel(
          name: account.displayName,
          id: account.id,
          photoUrl:
              "https://www.lacazmartins.com.br/wp-content/uploads/2017/05/sem-foto-oficial.png");
    }
    return UserModel(
        name: account.displayName, id: account.id, photoUrl: account.photoUrl);
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'photoUrl': photoUrl,
      'score': score,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      id: map['id'] ?? '',
      photoUrl: map['photoUrl'],
      score: map['score']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  UserModel copyWith({
    String? name,
    String? id,
    String? photoUrl,
    int? score,
  }) {
    return UserModel(
      name: name ?? this.name,
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      score: score ?? this.score,
    );
  }

  @override
  String toString() {
    return 'UserModel(name: $name, id: $id, photoUrl: $photoUrl, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.id == id &&
        other.photoUrl == photoUrl &&
        other.score == score;
  }

  @override
  int get hashCode {
    return name.hashCode ^ id.hashCode ^ photoUrl.hashCode ^ score.hashCode;
  }
}
