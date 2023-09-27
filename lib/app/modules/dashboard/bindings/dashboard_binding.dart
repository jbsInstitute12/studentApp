import 'package:get/get.dart';
import 'package:studentapp/app/modules/Profile/controllers/profile_controller.dart';
import 'package:studentapp/app/modules/home/controllers/home_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DashboardController(),
    );
    Get.put(HomeController());
    Get.put(ProfileController());
  }
}
