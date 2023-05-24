class EducationDetailModel {
  String? schoolName;
  String? passingYear;
  double? percentage;
  String? courseName;

  EducationDetailModel({this.schoolName, this.passingYear, this.percentage, this.courseName});

  EducationDetailModel.fromJson(Map<String, dynamic> json) {
    schoolName = json['schoolName'] ?? '';
    passingYear = json['passingYear'] ?? '';
    percentage = json['percentage'] ?? 0.0;
    courseName = json['courseName'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['schoolName'] = schoolName ?? '';
    data['passingYear'] = passingYear ?? '';
    data['percentage'] = percentage ?? 0.0;
    data['courseName'] = courseName ?? '';
    return data;
  }
}
