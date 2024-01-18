class FacultyModel {
  final String id;
  final NameModel name;
  final String dateOfBirth;
  final String gender;
  final String bloodGroup;
  final String email;
  final String contactNo;
  final String emergencyContactNo;
  final String presentAddress;
  final String permanentAddress;
  final String designation;
  final String profileImage;
  final String academicFaculty;
  final String academicDepartment;

  FacultyModel({
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
    required this.academicFaculty,
    required this.academicDepartment,
  });

  factory FacultyModel.fromJson(Map<String, dynamic> json) {
    return FacultyModel(
      id: json['id'] ?? "",
      name: NameModel.fromJson(json['name']),
      dateOfBirth: json['dateOfBirth'] ?? "",
      gender: json['gender'] ?? "",
      bloodGroup: json['bloodGroup'] ?? "",
      email: json['email'] ?? "",
      contactNo: json['contactNo'] ?? "",
      emergencyContactNo: json['emergencyContactNo'] ?? "",
      presentAddress: json['presentAddress'] ?? "",
      permanentAddress: json['permanentAddress'] ?? "",
      designation: json['designation'] ?? "",
      profileImage: json['profileImage'] ?? "",
      academicFaculty: json['academicFaculty'] ?? "",
      academicDepartment: json['academicDepartment'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name.toJson(),
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'bloodGroup': bloodGroup,
      'email': email,
      'contactNo': contactNo,
      'emergencyContactNo': emergencyContactNo,
      'presentAddress': presentAddress,
      'permanentAddress': permanentAddress,
      'designation': designation,
      'profileImage': profileImage,
      'academicFaculty': academicFaculty,
      'academicDepartment': academicDepartment,
    };
  }
}

class NameModel {
  final String firstName;
  final String lastName;
  final String? middleName;

  NameModel({
    required this.firstName,
    required this.lastName,
    this.middleName,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
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
