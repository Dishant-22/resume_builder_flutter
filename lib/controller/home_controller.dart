import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resume_builder_flutter/model/education_detail_model.dart';
import 'package:resume_builder_flutter/model/recent_work_model.dart';
import 'package:resume_builder_flutter/model/work_history_model.dart';

class HomeController extends GetxController {
  // Resume Details
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  // Contact Details
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  // Personal Details
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController marialStatusController = TextEditingController();
  // Education Details
  RxList<EducationDetailModel> educationDetailsList = <EducationDetailModel>[].obs;
  // Work History
  RxList<WorkHistoryModel> workHistoryList = <WorkHistoryModel>[].obs;
  // Recent Work History
  RxList<RecentWorkModel> recentWorkList = <RecentWorkModel>[].obs;



  onAddEducationDetail(){
    educationDetailsList.add(EducationDetailModel());
    update();
  }

  onDeleteEducationDetail(int index){
    educationDetailsList.removeAt(index);
    update();
  }

  onAddWorkHistory(){
    workHistoryList.add(WorkHistoryModel());
    update();
  }

  onDeleteWorkHistory(int index){
    workHistoryList.removeAt(index);
    update();
  }


  onAddRecentWork(){
    recentWorkList.add(RecentWorkModel());
    update();
  }

  onDeleteRecentWork(int index){
    recentWorkList.removeAt(index);
    update();
  }

}
