class RecentWorkModel {
  String? projectName;
  String? aboutProject;
  String? liveURL;

  RecentWorkModel({this.projectName, this.aboutProject, this.liveURL});

  RecentWorkModel.fromJson(Map<String, dynamic> json) {
    projectName = json['projectName'] ?? '';
    aboutProject = json['aboutProject'] ?? '';
    liveURL = json['liveURL'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['projectName'] = projectName;
    data['aboutProject'] = aboutProject;
    data['liveURL'] = liveURL;
    return data;
  }
}