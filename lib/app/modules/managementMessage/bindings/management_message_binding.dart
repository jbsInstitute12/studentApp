import 'package:get/get.dart';

import '../controllers/management_message_controller.dart';

class ManagementMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagementMessageController>(
      () => ManagementMessageController(),
    );
  }
}
