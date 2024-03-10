class AcademicSemester {
  final String title;
  final String year;
  final String code;
  final String startMonth;
  final String endMonth;

  AcademicSemester({
    required this.title,
    required this.year,
    required this.code,
    required this.startMonth,
    required this.endMonth,
  });

  factory AcademicSemester.fromJson(Map<String, dynamic> json) {
    return AcademicSemester(
      title: json['title'] ?? "",
      year: json['year'] ?? "",
      code: json['code'] ?? "",
      startMonth: json['startMonth'] ?? "",
      endMonth: json['endMonth'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'year': year,
      'code': code,
      'startMonth': startMonth,
      'endMonth': endMonth,
    };
  }
}
