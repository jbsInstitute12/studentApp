import 'package:get/get.dart';

import '../controllers/facility_controller.dart';

class FacilityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FacilityController>(
      () => FacilityController(),
    );
  }
}
