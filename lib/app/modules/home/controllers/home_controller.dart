import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

// RxList<String> pagesName=<String>[

// ].obs;

  RxList<String> screensName = RxList.generate(10, (index) => "fghhghcg");
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
