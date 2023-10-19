
class ErrorResponse {
  ErrorResponse({
    required this.message,
    // required this.errors,
  });

  final String? message;
  // final Errors? errors;

  factory ErrorResponse.fromJson(Map<String, dynamic> json){
    return ErrorResponse(
      message: json["message"],
      // errors: json["errors"] == null ? null : Errors.fromJson(json["errors"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "message": message,
    // "errors": errors?.toJson(),
  };

}

class Errors {
  Errors({
    required this.email,
    required this.password,
    required this.message,
  });

  final List<String> email;
  final List<String> password;
  final List<String> message;

  factory Errors.fromJson(Map<String, dynamic> json){
    return Errors(
      email: json["email"] == null ? [] : List<String>.from(json["email"]!.map((x) => x)),
      password: json["password"] == null ? [] : List<String>.from(json["password"]!.map((x) => x)),
      message: json["message"] == null ? [] : List<String>.from(json["message"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "email": email.map((x) => x).toList(),
    "password": password.map((x) => x).toList(),
    "message": message.map((x) => x).toList(),
  };

}