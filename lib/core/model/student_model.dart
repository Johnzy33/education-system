import 'package:uuid/uuid.dart';

class TestModel {
  TestModel({required this.marketing, required this.title});

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return TestModel(
      marketing: json['marketing'] as bool,
      title: json['title'] as String,
    );
  }

  final bool marketing;
  final String title;

  Map<String, Object> toJson() {
    return {
      'marketing': marketing,
      'title': title,
    };
  }
}

class StudentModel {
  final String id;
  final Name name;
  final String gender;
  final dynamic dateOfBirth;
  final String bloodGroup;
  final String email;
  final String phoneNumber;
  final String jambRegNumber;
  final String contactNo;
  final String role;
  final String emergencyContactNo;
  final String presentAddress;
  final String permanentAddress;
  final GuardianModel guardian;
  final LocalGuardianModel localGuardian;
  final String profileImage;
  final String academicFaculty;
  final String academicDepartment;
  final String academicSemester;
  final dynamic createdAt;
  final dynamic updatedAt;

  StudentModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.dateOfBirth,
    required this.bloodGroup,
    required this.email,
    required this.phoneNumber,
    required this.jambRegNumber,
    required this.contactNo,
    required this.role,
    required this.emergencyContactNo,
    required this.presentAddress,
    required this.permanentAddress,
    required this.guardian,
    required this.localGuardian,
    required this.profileImage,
    required this.academicFaculty,
    required this.academicDepartment,
    required this.academicSemester,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json['_id'] ?? "",
      name: Name(
        firstName: json['name']['firstName'] ?? "",
        middleName: json['name']['middleName'] ?? "",
        lastName: json['name']['lastName'] ?? "",
      ),
      gender: json['gender'] ?? "",
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      bloodGroup: json['bloodGroup'] ?? "",
      email: json['email'] ?? "",
      phoneNumber: json['phoneNumber'] ?? "",
      jambRegNumber: json['jambRegNumber'] ?? "",
      contactNo: json['contactNo'] ?? "",
      role: json['role'] ?? "",
      emergencyContactNo: json['emergencyContactNo'] ?? "",
      presentAddress: json['presentAddress'] ?? "",
      permanentAddress: json['permanentAddress'] ?? "",
      guardian: GuardianModel(
        fatherName: json['guardian']['fatherName'] ?? "",
        fatherOccupation: json['guardian']['fatherOccupation'] ?? "",
        fatherContactNo: json['guardian']['fatherContactNo'] ?? "",
        motherName: json['guardian']['motherName'] ?? "",
        motherOccupation: json['guardian']['motherOccupation'] ?? "",
        motherContactNo: json['guardian']['motherContactNo'] ?? "",
        address: json['guardian']['address'] ?? "",
      ),
      localGuardian: LocalGuardianModel(
        name: json['localGuardian']['name'] ?? "",
        occupation: json['localGuardian']['occupation'] ?? "",
        contactNo: json['localGuardian']['contactNo'] ?? "",
        address: json['localGuardian']['address'] ?? "",
      ),
      profileImage: json['profileImage'] ?? "",
      academicFaculty: json['academicFaculty'] ?? "",
      academicDepartment: json['academicDepartment'] ?? "",
      academicSemester: json['academicSemester'] ?? "",
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, Object> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
        "dateOfBirth": dateOfBirth,
        "bloodGroup": bloodGroup,
        "email": email,
        "phoneNumber": phoneNumber,
        "jambRegNumber": jambRegNumber,
        "contactNo": contactNo,
        "role": role,
        "emergencyContactNo": emergencyContactNo,
        "presentAddress": presentAddress,
        "permanentAddress": permanentAddress,
        "guardian": guardian,
        "localGuardian": localGuardian,
        "profileImage": profileImage,
        "academicFaculty": academicFaculty,
        "academicDepartment": academicDepartment,
        "academicSemester": academicSemester,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

class Name {
  String firstName;
  String middleName;
  String lastName;

  Name({
    required this.firstName,
    this.middleName = '',
    required this.lastName,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
    );
  }

  Map<String, Object> toJson() {
    return {
      'name': firstName,
      'middleName': middleName,
      'lastName': lastName,
    };
  }
}

class GuardianModel {
  String fatherName;
  String fatherOccupation;
  String fatherContactNo;
  String motherName;
  String motherOccupation;
  String motherContactNo;
  String address;

  GuardianModel({
    required this.fatherName,
    required this.fatherOccupation,
    required this.fatherContactNo,
    required this.motherName,
    required this.motherOccupation,
    required this.motherContactNo,
    required this.address,
  });

  factory GuardianModel.fromJson(Map<String, dynamic> json) {
    return GuardianModel(
      fatherName: json['fatherName'] as String,
      fatherOccupation: json['fatherOccupation'] as String,
      fatherContactNo: json['fatherContactNo'] as String,
      motherName: json['motherName'] as String,
      motherOccupation: json['motherOccupation'] as String,
      motherContactNo: json['motherContactNo'] as String,
      address: json['address'] as String,
    );
  }

  Map<String, Object> toJson() {
    return {
      'fatherName': fatherName,
      'fatherOccupation': fatherOccupation,
      'fatherContactNo': fatherContactNo,
      'motherName': motherName,
      'motherOccupation': motherOccupation,
      'motherContactNo': motherContactNo,
      'address': address,
    };
  }
}

class LocalGuardianModel {
  String name;
  String occupation;
  String contactNo;
  String address;

  LocalGuardianModel({
    required this.name,
    required this.occupation,
    required this.contactNo,
    required this.address,
  });

  factory LocalGuardianModel.fromJson(Map<String, dynamic> json) {
    return LocalGuardianModel(
      name: json['name'] as String,
      occupation: json['occupation'] as String,
      contactNo: json['contactNo'] as String,
      address: json['address'] as String,
    );
  }

  Map<String, Object> toJson() {
    return {
      'name': name,
      'occupation': occupation,
      'contactNo': contactNo,
      'address': address,
    };
  }
}

var uuid = const Uuid();

final student = StudentModel(
    id: uuid.v8(),
    name: Name(firstName: "Daniel", lastName: "Frank"),
    gender: "Male",
    dateOfBirth: "20|03|2000",
    bloodGroup: "O+",
    email: "email@gmail.com",
    phoneNumber: "+23480457684",
    jambRegNumber: "",
    contactNo: "21 Ademsy address",
    role: "UserRole.student.toString()",
    emergencyContactNo: "23480457600",
    presentAddress: "21 Present address",
    permanentAddress: "21 Permanent address",
    guardian: GuardianModel(
        fatherName: "Frank",
        fatherOccupation: "Teacher",
        fatherContactNo: "+23470345678",
        motherName: "Grace",
        motherOccupation: "Mini Seller",
        motherContactNo: "23470345622",
        address: "Mothers Address"),
    localGuardian: LocalGuardianModel(
        name: "Frank",
        occupation: "Local man",
        contactNo: "23470345678",
        address: "Local man address"),
    profileImage: "",
    academicFaculty: "Science",
    academicDepartment: "Microbiology",
    academicSemester: "First Semester",
    createdAt: "DateTime.now()",
    updatedAt: "DateTime.now()"
);