class AcademicFaculty {
  final String title;

  AcademicFaculty({
    required this.title,
  });

  factory AcademicFaculty.fromJson(Map<String, dynamic> json) {
    return AcademicFaculty(
      title: json['title'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
    };
  }
}
