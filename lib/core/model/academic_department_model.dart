class AcademicDepartmentModel {
  final String title;
  final String academicFaculty; // Assuming academicFaculty is a String in Dart

  AcademicDepartmentModel({
    required this.title,
    required this.academicFaculty,
  });

  factory AcademicDepartmentModel.fromJson(Map<String, dynamic> json) {
    return AcademicDepartmentModel(
      title: json['title'] ?? "",
      academicFaculty: json['academicFaculty'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'academicFaculty': academicFaculty,
    };
  }
}
