import 'package:get/get.dart';
import 'package:studentapp/app/modules/Profile/controllers/profile_controller.dart';
import 'package:studentapp/app/modules/home/controllers/home_controller.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashController(),
    );

    Get.put(HomeController());
    Get.put(ProfileController());
  }
}
