import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:studentapp/app/data/appUtils.dart';
import 'package:studentapp/app/data/commonWidget.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonWidget.getCommonAppBar("Notifications", null, true),
      body: const Center(
        child: Text(
          'NotificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
