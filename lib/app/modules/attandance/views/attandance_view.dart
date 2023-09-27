import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/attandance_controller.dart';

class AttandanceView extends GetView<AttandanceController> {
  const AttandanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttandanceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AttandanceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
