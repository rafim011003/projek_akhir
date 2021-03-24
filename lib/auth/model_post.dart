// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.error,
    this.userData,
  });

  bool error;
  UserData userData;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        error: json["error"],
        userData: UserData.fromJson(json["user_data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "user_data": userData.toJson(),
      };
}

class UserData {
  UserData({
    this.id,
    this.name,
    this.email,
    this.token,
    this.type,
    this.imageId,
    this.role,
    this.expiresAt,
  });

  int id;
  String name;
  String email;
  String token;
  String type;
  int imageId;
  String role;
  DateTime expiresAt;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        token: json["token"],
        type: json["type"],
        imageId: json["image_id"],
        role: json["role"],
        expiresAt: DateTime.parse(json["expires_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "token": token,
        "type": type,
        "image_id": imageId,
        "role": role,
        "expires_at": expiresAt.toIso8601String(),
      };
}
