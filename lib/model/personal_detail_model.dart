class PersonalDetailsModel {
  String? dOB;
  String? age;
  String? gender;
  String? nationality;
  String? maritalStatus;
  String? language;

  PersonalDetailsModel({this.dOB, this.age, this.gender, this.nationality, this.maritalStatus, this.language});

  PersonalDetailsModel.fromJson(Map<String, dynamic> json) {
    dOB = json['dOB'] ?? '';
    age = json['age'] ?? '';
    gender = json['gender'] ?? '';
    nationality = json['nationality'] ?? '';
    maritalStatus = json['maritalStatus'] ?? '';
    language = json['language'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dOB'] = dOB;
    data['age'] = age;
    data['gender'] = gender;
    data['nationality'] = nationality;
    data['maritalStatus'] = maritalStatus;
    data['language'] = language;
    return data;
  }
}