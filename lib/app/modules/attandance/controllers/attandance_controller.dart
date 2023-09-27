import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttandanceController extends GetxController {
  //TODO: Implement AttandanceController

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

final List<ChartData> chartData = [
  ChartData('Present', 10, Colors.green.shade200),
  ChartData('Absent', 90, Colors.red.shade200),
];

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
