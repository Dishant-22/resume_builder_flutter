class WorkHistoryModel {
  String? companyName;
  String? jobPost;
  String? joiningTime;
  String? leavedTime;

  WorkHistoryModel({this.companyName, this.jobPost, this.joiningTime, this.leavedTime});

  WorkHistoryModel.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'] ?? '';
    jobPost = json['jobPost'] ?? '';
    joiningTime = json['joiningTime'] ?? '';
    leavedTime = json['leavedTime'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['companyName'] = companyName;
    data['jobPost'] = jobPost;
    data['joiningTime'] = joiningTime;
    data['leavedTime'] = leavedTime;
    return data;
  }
}