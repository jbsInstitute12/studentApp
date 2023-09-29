import 'package:get/get.dart';

import '../controllers/admission_inquiry_controller.dart';

class AdmissionInquiryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdmissionInquiryController>(
      () => AdmissionInquiryController(),
    );
  }
}
