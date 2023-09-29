import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/activity/controllers/activity_controller.dart';

class detailedView extends GetView<ActivityController> {
  String title = "";
  detailedView({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonWidget.getCommonAppBar(
          title,
          TextStyle(
              fontFamily: FontFamily.popins,
              fontWeight: FontWeight.w600,
              color: Colors.white),
          false),
      body: const Center(child: Text("jkfdj")),
    );
  }
}
