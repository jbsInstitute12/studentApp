import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final _currentIndex = 0.obs;

  RxList<Widget> screens = <Widget>[].obs;
  get currentIndex => _currentIndex.value;

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
}
