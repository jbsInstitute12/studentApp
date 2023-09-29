import 'package:get/get.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/modules/activity/views/detailedView.dart';

class ActivityController extends GetxController {
  //TODO: Implement ActivityController

  final count = 0.obs;
  RxList<Map<dynamic, dynamic>> screens = <Map<dynamic, dynamic>>[
    {
      "icon": AppIcons.icCalender,
      "title": "Activities",
      "callBack": () {
        Get.to(detailedView(title: "Activities"));
      }
    },
    {
      "icon": AppIcons.icCalender,
      "title": "Day Celebration",
      "callBack": () {
        Get.to(detailedView(title: "Day Celebration"));
      }
    },
    {
      "icon": AppIcons.icCalender,
      "title": "Monthly Plan",
      "callBack": () {
        Get.to(detailedView(title: "Monthly Plan"));
      }
    },
    {
      "icon": AppIcons.icCalender,
      "title": "Festivals",
      "callBack": () {
        Get.to(detailedView(title: "Festivals"));
      }
    },
  ].obs;
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
