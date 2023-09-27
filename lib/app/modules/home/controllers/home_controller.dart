import 'package:get/get.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/data/appStrings.dart';

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
