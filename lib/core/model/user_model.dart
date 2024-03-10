class User {
  final String id;
  final String password;
  final bool needPasswordChange;
  final DateTime? passwordChangedAt;
  final String role;
  final String? student;
  final String? faculty;
  final String? admin;

  User({
    required this.id,
    required this.password,
    this.needPasswordChange = true,
    this.passwordChangedAt,
    required this.role,
    this.student,
    this.faculty,
    this.admin,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      password: json['password'],
      needPasswordChange: json['needPasswordChange'],
      passwordChangedAt: json['passwordChangedAt'] != null
          ? DateTime.parse(json['passwordChangedAt'])
          : null,
      role: json['role'],
      student: json['student'],
      faculty: json['faculty'],
      admin: json['admin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'password': password,
      'needPasswordChange': needPasswordChange,
      'passwordChangedAt': passwordChangedAt?.toIso8601String(),
      'role': role,
      'student': student,
      'faculty': faculty,
      'admin': admin,
    };
  }
}
