import 'package:resume_builder_flutter/model/contact_detail_model.dart';
import 'package:resume_builder_flutter/model/education_detail_model.dart';
import 'package:resume_builder_flutter/model/personal_detail_model.dart';
import 'package:resume_builder_flutter/model/recent_work_model.dart';
import 'package:resume_builder_flutter/model/work_history_model.dart';

class ResumeDetailsModel {
  String? firstName;
  String? lastName;
  String? jobTitle;
  String? experience;
  String? summary;
  ContactDetailModel? contactDetail;
  PersonalDetailsModel? personalDetails;
  List<String>? interests = <String>[];
  List<EducationDetailModel>? education = <EducationDetailModel>[];
  List<WorkHistoryModel>? workHistory = <WorkHistoryModel>[];
  List<RecentWorkModel>? recentWork = <RecentWorkModel>[];

  ResumeDetailsModel({this.firstName, this.lastName, this.jobTitle, this.experience, this.summary, this.contactDetail, this.personalDetails, this.interests, this.education, this.workHistory, this.recentWork});

  ResumeDetailsModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    jobTitle = json['jobTitle'];
    experience = json['Experience'];
    summary = json['summary'];
    contactDetail = json['contactDetail'] != null ? ContactDetailModel.fromJson(json['contactDetail']) : null;
    personalDetails = json['personalDetails'] != null ? PersonalDetailsModel.fromJson(json['personalDetails']) : null;
    interests = json['interests'].cast<String>();
    if (json['education'] != null) {
      education = <EducationDetailModel>[];
      json['education'].forEach((v) {
        education!.add(EducationDetailModel.fromJson(v));
      });
    }
    if (json['workHistory'] != null) {
      workHistory = <WorkHistoryModel>[];
      json['workHistory'].forEach((v) {
        workHistory!.add(WorkHistoryModel.fromJson(v));
      });
    }
    if (json['recentWork'] != null) {
      recentWork = <RecentWorkModel>[];
      json['recentWork'].forEach((v) {
        recentWork!.add(RecentWorkModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['jobTitle'] = jobTitle;
    data['Experience'] = experience;
    data['summary'] = summary;
    if (contactDetail != null) {
      data['contactDetail'] = contactDetail!.toJson();
    }
    if (personalDetails != null) {
      data['personalDetails'] = personalDetails!.toJson();
    }
    data['interests'] = interests;
    if (education != null) {
      data['education'] = education!.map((v) => v.toJson()).toList();
    }
    if (workHistory != null) {
      data['workHistory'] = workHistory!.map((v) => v.toJson()).toList();
    }
    if (recentWork != null) {
      data['recentWork'] = recentWork!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
