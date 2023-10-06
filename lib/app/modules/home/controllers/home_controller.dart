import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/data/appStrings.dart';
import 'package:studentapp/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList<String> screensName = <String>[
    AppStrings.todays,
    AppStrings.aboutUse,
    AppStrings.activity,
    AppStrings.admission,
    AppStrings.admissionInquiry,
    AppStrings.assignement,
    AppStrings.contactus,
    AppStrings.eLibrary,
    // AppStrings.eLibrary,
    AppStrings.events,
    AppStrings.facility,
    AppStrings.gallery,
    AppStrings.managementMessage,
    AppStrings.notice,
    AppStrings.principalMessage
  ].obs;
  RxList<String> screensRouteName = <String>[
    Routes.TODAYS,
    Routes.TODAYS,
    Routes.ACTIVITY,
    Routes.TODAYS,
    Routes.ADMISSION_INQUIRY,
    Routes.ASSIGNMENT,
    Routes.TODAYS,
    Routes.TODAYS,
    // Routes.eLibrary,
    Routes.EVENTS,
    Routes.FACILITY,
    Routes.TODAYS,
    Routes.MANAGEMENT_MESSAGE,
    Routes.NOTICE,
    Routes.MANAGEMENT_MESSAGE
  ].obs;

  List<dynamic> icons = [
    AppIcons.icCalender,
    AppIcons.icAboutus,
    AppIcons.icActivity,
    AppIcons.icAdmission,
    AppIcons.icAdmissionInquiry,
    AppIcons.icAssignment,
    AppIcons.icContactUs,
    AppIcons.icElibrary,
    AppIcons.icEvents,
    AppIcons.icFacility,
    AppIcons.icGallery,
    AppIcons.icManagementMessage,
    AppIcons.icNotice,
    AppIcons.icPrincipalMessage
  ];

  // RxList<String>  = RxList.generate(10, (index) => "fghhghcg");
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
