import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:resume_builder_flutter/controller/home_controller.dart';
import 'package:resume_builder_flutter/widget/custom_row_widget.dart';
import 'package:resume_builder_flutter/widget/text_field.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Details"),
        actions: [
          IconButton(
            onPressed: controller.setResumeDataModel,
            icon: const Icon(Icons.remove_red_eye),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: LabelTextField(
                    controller: controller.firstNameController,
                    keyboardType: TextInputType.name,
                    label: 'First Name',
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: LabelTextField(
                    controller: controller.lastNameController,
                    keyboardType: TextInputType.name,
                    label: 'Last Name',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: LabelTextField(
                    controller: controller.jobTitleController,
                    keyboardType: TextInputType.name,
                    label: 'Job Title',
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: LabelTextField(
                    controller: controller.experienceController,
                    keyboardType: TextInputType.number,
                    label: 'Experience (In years)',
                  ),
                ),
              ],
            ),
            LabelTextField(
              controller: controller.aboutMeController,
              keyboardType: TextInputType.name,
              label: 'About me',
              maxLines: 5,
            ),
            const SizedBox(height: 10),
            const Text(
              "Contact Details",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: LabelTextField(
                    controller: controller.emailAddressController,
                    keyboardType: TextInputType.emailAddress,
                    label: 'Email Address',
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: LabelTextField(
                    controller: controller.mobileNoController,
                    keyboardType: TextInputType.phone,
                    label: 'Mobile No.',
                  ),
                ),
              ],
            ),
            const Text(
              "Personal Details",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: LabelTextField(
                    controller: controller.dateOfBirthController,
                    readOnly: true,
                    keyboardType: TextInputType.datetime,
                    label: 'Date of Birth',
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: LabelTextField(
                    controller: controller.genderController,
                    keyboardType: TextInputType.text,
                    label: 'Gender',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: LabelTextField(
                    controller: controller.nationalityController,
                    keyboardType: TextInputType.name,
                    label: 'Nationality',
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: LabelTextField(
                    controller: controller.marialStatusController,
                    keyboardType: TextInputType.name,
                    label: 'Marital Status',
                  ),
                ),
              ],
            ),
            CustomRowButton(
              onPressed: controller.onAddEducationDetail,
              title: "Education Details",
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.educationDetailsList.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      key: ValueKey(index),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              controller.onDeleteEducationDetail(index);
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelTextField(
                              label: "School Name",
                              controller: TextEditingController(),
                              onChanged: (p0) {
                                controller.educationDetailsList[index].schoolName = p0;
                                controller.update();
                              },
                            ),
                            const SizedBox(height: 5),
                            LabelTextField(
                              label: "Course Name",
                              controller: TextEditingController(),
                              onChanged: (p0) {
                                controller.educationDetailsList[index].courseName = p0;
                                controller.update();
                              },
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Flexible(
                                  child: LabelTextField(
                                    label: "Passing Year",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {
                                      controller.educationDetailsList[index].passingYear = p0;
                                      controller.update();
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: LabelTextField(
                                    label: "Percentage",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {
                                      controller.educationDetailsList[index].percentage = double.tryParse(p0);
                                      controller.update();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            CustomRowButton(
              onPressed: controller.onAddWorkHistory,
              title: "Work History",
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.workHistoryList.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      key: ValueKey(index),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              controller.onDeleteWorkHistory(index);
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: LabelTextField(
                                    label: "Company Name",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: LabelTextField(
                                    label: "Your Post",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Flexible(
                                  child: LabelTextField(
                                    label: "Joining Date",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: LabelTextField(
                                    label: "Last Date",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                              ],
                            ),
                            // Text(controller.educationHistory[index].schoolName ?? ''),
                          ],
                        ),
                      ),
                    );
                  },
                )),
            CustomRowButton(
              onPressed: controller.onAddRecentWork,
              title: "Recent Work",
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.recentWorkList.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      key: ValueKey(index),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              controller.onDeleteRecentWork(index);
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: LabelTextField(
                                    label: "Project Name",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: LabelTextField(
                                    label: "Live URL",
                                    controller: TextEditingController(),
                                    onChanged: (p0) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            LabelTextField(
                              label: "Project Description",
                              maxLines: 3,
                              controller: TextEditingController(),
                              onChanged: (p0) {},
                            ),
                            // Text(controller.educationHistory[index].schoolName ?? ''),
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
