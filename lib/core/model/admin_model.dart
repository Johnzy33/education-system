class AdminModel {
  final String id;
  final Name name;
  final DateTime dateOfBirth;
  final String gender;
  final String bloodGroup;
  final String email;
  final String contactNo;
  final String emergencyContactNo;
  final String presentAddress;
  final String permanentAddress;
  final String designation;
  final String profileImage;

  AdminModel({
    required this.id,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.bloodGroup,
    required this.email,
    required this.contactNo,
    required this.emergencyContactNo,
    required this.presentAddress,
    required this.permanentAddress,
    required this.designation,
    required this.profileImage,
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      id: json['id'] ?? "",
      name: Name.fromJson(json['name']),
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      gender: json['gender'] ?? "",
      bloodGroup: json['bloodGroup'] ?? "",
      email: json['email'] ?? "",
      contactNo: json['contactNo'] ?? "",
      emergencyContactNo: json['emergencyContactNo'] ?? "",
      presentAddress: json['presentAddress'] ?? "",
      permanentAddress: json['permanentAddress'] ?? "",
      designation: json['designation'] ?? "",
      profileImage: json['profileImage'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name.toJson(),
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'gender': gender,
      'bloodGroup': bloodGroup,
      'email': email,
      'contactNo': contactNo,
      'emergencyContactNo': emergencyContactNo,
      'presentAddress': presentAddress,
      'permanentAddress': permanentAddress,
      'designation': designation,
      'profileImage': profileImage,
    };
  }
}

class Name {
  String firstName;
  String lastName;
  String? middleName;

  Name({
    required this.firstName,
    required this.lastName,
    this.middleName,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      firstName: json['firstName'] ?? "",
      lastName: json['lastName'] ?? "",
      middleName: json['middleName'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'middleName': middleName,
    };
  }
}
