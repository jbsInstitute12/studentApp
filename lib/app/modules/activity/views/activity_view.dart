import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/views/commonColorCard.dart';

import '../controllers/activity_controller.dart';

class ActivityView extends GetView<ActivityController> {
  const ActivityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonWidget.getCommonAppBar(
          "Activity",
          TextStyle(
            color: Colors.white,
          ),
          false),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: ListView.builder(
          itemBuilder: (context, index) {
            int rand =
                Random().nextInt(AppColors.mainHomeScreenColors.length - 1);
            return CommonColorCard(
              name: controller.screens[index]['title'],
              color: AppColors.mainHomeScreenColors[rand],
              onPressed: controller.screens[index]['callBack'],
            );
          },
          itemCount: controller.screens.length,
        ),
      ),
    );
  }
}
