import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';

import 'package:tab_container/tab_container.dart';

import '../controllers/assignment_controller.dart';
import 'package:flutter_folding_card/flutter_folding_card.dart';

class AssignmentView extends GetView<AssignmentController> {
  // TabController tabcon = TabController(length: 2, vsync: );
  AssignmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonWidget.getCommonAppBar(
          "Assignments",
          FontFamily.normalW600PopinsStyle,
          false,
          trailing: [
            InkWell(
              onTap: () {
                if (controller.data.isEmpty) {
                  controller.data.value = List.generate(4, (index) => index);
                } else {
                  controller.data.clear();
                }
              },
              child: Icon(
                Icons.close_fullscreen,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        ),
        body: Obx(() {
          return TabContainer(
              childPadding: EdgeInsets.zero,
              controller: controller.tabcon.value,
              colors: [
                AppColors.mainHomeScreenColors[1],
                AppColors.mainHomeScreenColors[2],
                AppColors.mainHomeScreenColors[4],
                AppColors.mainHomeScreenColors[0]
              ],
              isStringTabs: false,

              // color: AppColors.whiteColor,
              // selectedTextStyle: FontFamily.normalW600PopinsStyle
              //     .copyWith(color: Colors.white),
              // unselectedTextStyle: FontFamily.normalW600PopinsStyle
              //     .copyWith(color: Colors.black),
              children: controller.tabScreens,
              tabs: controller.tabs.map((element) {
                return Obx(() {
                  return Text(
                    element.toString(),
                    textAlign: TextAlign.center,
                    style: controller.index.value ==
                            controller.tabs.indexOf(element)
                        ? FontFamily.normalW600PopinsStyle
                            .copyWith(color: Colors.white)
                        : FontFamily.normalW600PopinsStyle
                            .copyWith(color: Colors.black),
                  );
                });
              }).toList());
        }));
  }
}
