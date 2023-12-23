import 'dart:convert';


UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String? userModelToJson(UserModel data) => json.encode(data.toJson());

class UserData {
  UserData({
    required this.user,
    required this.token,
  });

  final UserModel? user;
  final String? token;

  factory UserData.fromJson(Map<String, dynamic> json){
    return UserData(
      user: json["user"] == null ? null : UserModel.fromJson(json["user"]),
      token: json["token"],
    );
  }

  Map<String, dynamic> toJson() => {
    "user": user?.toJson(),
    "token": token,
  };

}

class UserModel {
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.regNumber,
    required this.emailVerifiedAt,
    required this.phoneNumber,
    required this.disabledAt,
    required this.disabledBecause,
    required this.role,
    required this.lastLoginAt,
    required this.id,
    required this.updatedAt,
    required this.createdAt,
  });

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? regNumber;
  final String? emailVerifiedAt;
  final String? phoneNumber;
  final String? disabledAt;
  final String? disabledBecause;
  final dynamic role;
  final dynamic lastLoginAt;
  final String? id;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      firstName: json["first_name"],
      lastName: json["last_name"],
      email: json["email"],
      regNumber: json["reg_number"],
      emailVerifiedAt: json["email_verified_at"],
      phoneNumber: json["phone_number"],
      disabledAt: json["disabled_at"],
      disabledBecause: json["disabled_because"],
      role: json["role"],
      lastLoginAt: json["last_login_at"],
      id: json["id"],
      updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "reg_number": regNumber,
    "email_verified_at": emailVerifiedAt,
    "phone_number": phoneNumber,
    "disabled_at": disabledAt,
    "disabled_because": disabledBecause,
    "role": role,
    "last_login_at": lastLoginAt,
    "id": id,
    "updated_at": updatedAt?.toIso8601String(),
    "created_at": createdAt?.toIso8601String(),
  };

}
