import 'package:get/get.dart';
import 'package:studentapp/app/data/appStrings.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList<String> screensName = <String>[
    AppStrings.aboutUse,
    AppStrings.activity,
    AppStrings.admission,
    AppStrings.admissionInquiry,
    AppStrings.assignement,
    AppStrings.contactus,
    AppStrings.eLibrary,
    AppStrings.eLibrary,
    AppStrings.events,
    AppStrings.facility,
    AppStrings.gallery,
    AppStrings.managementMessage,
    AppStrings.notice,
    AppStrings.principalMessage
  ].obs;

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
