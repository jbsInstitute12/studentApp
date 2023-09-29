import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/apiEndpoints.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/data/appStrings.dart';
import 'package:studentapp/app/data/commonMethods.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:studentapp/app/routes/app_pages.dart';
import 'package:studentapp/gen/assets.gen.dart';

class DrawerView extends GetView<DashboardController> {
  const DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                  // borderRadius:
                  //     BorderRadius.only(bottomLeft: Radius.circular(10.sp)),
                  gradient: LinearGradient(
                      transform: GradientRotation(3.14 / 10),
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColors.redColor, Colors.red, Colors.white])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10.sp,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.sp),
                      child: Image.network(
                        "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
                        height: 90,
                        width: 90,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    "JBS Education - Surat",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: FontFamily.popins,
                        fontSize: 15.sp),
                  ),
                ],
              )),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Obx(() {
                    return ExpansionTile(
                      onExpansionChanged: (value) {
                        controller.tileExpanded.value = value;
                      },
                      iconColor:
                          controller.tileExpanded.value ? Colors.red : null,
                      shape: Border(
                          bottom:
                              BorderSide(width: 0.3, style: BorderStyle.solid)),
                      title: Text(
                        "Social Connections",
                        style: TextStyle(
                            color: controller.tileExpanded.value
                                ? Colors.red
                                : null,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.popins),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  commonMethods.launchurl(ApiEndPoints.ytUrl);
                                  // Get.toNamed(Routes.SUBMISSION_AND_ASSESMENT);
                                },
                                shape: Border(
                                    bottom: BorderSide(
                                        width: 0.3, style: BorderStyle.solid)),
                                leading: Image.asset(
                                  Assets.gif.youtube.path,
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.fill,
                                ),
                                title: Text(
                                  "Youtube",
                                  style:
                                      TextStyle(fontFamily: FontFamily.popins),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  commonMethods.launchurl(ApiEndPoints.WpUrl);
                                },
                                shape: Border(),
                                leading: Image.asset(
                                  Assets.gif.whatsapp.path,
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.fill,
                                ),
                                title: Text(
                                  "Whatsapp",
                                  style:
                                      TextStyle(fontFamily: FontFamily.popins),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      callback: () {
                        Get.toNamed(Routes.MANAGEMENT_MESSAGE);
                      },
                      title: AppStrings.managementMessage,
                      icon: AppIcons.icManagementMessage),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.principalMessage,
                      callback: () {
                        Get.toNamed(Routes.MANAGEMENT_MESSAGE);
                      },
                      icon: AppIcons.icPrincipalMessage),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.activity,
                      callback: () {},
                      icon: AppIcons.icActivity),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.staff_details,
                      callback: () {},
                      icon: AppIcons.icActivity),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.facility,
                      callback: () {
                        Get.toNamed(Routes.FACILITY);
                      },
                      icon: AppIcons.icFacility),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.todaysBday,
                      callback: () {},
                      icon: AppIcons.icbirthday),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.syllabus,
                      callback: () {},
                      icon: AppIcons.icsyllabus),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.career,
                      callback: () {},
                      icon: AppIcons.icsyllabus),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.parentinquiry,
                      callback: () {
                        Get.toNamed(Routes.ADMISSION_INQUIRY);
                      },
                      icon: AppIcons.icinquiry),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.schlResult,
                      callback: () {},
                      icon: AppIcons.icschlresult),
                  SizedBox(
                    height: 1.h,
                  ),
                  commonWidget.getDrawerListTile(
                      title: AppStrings.privacyPolicy,
                      callback: () {},
                      icon: AppIcons.icprivacypolicy),
                  SizedBox(
                    height: 1.h,
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text(
                      "Rate us",
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
