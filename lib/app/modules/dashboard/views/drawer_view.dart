import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/dashboard/controllers/dashboard_controller.dart';

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
          SizedBox(
            height: 1.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpansionTile(
                    shape: Border(
                        bottom:
                            BorderSide(width: 0.3, style: BorderStyle.solid)),
                    title: Text(
                      "About us",
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                // Get.toNamed(Routes.SUBMISSION_AND_ASSESMENT);
                              },
                              shape: Border(
                                  bottom: BorderSide(
                                      width: 0.3, style: BorderStyle.solid)),
                              leading: Icon(Icons.attachment_sharp),
                              title: Text(
                                "Submission & Assesment",
                              ),
                            ),
                            ListTile(
                              shape: Border(
                                  bottom: BorderSide(
                                      width: 0.3, style: BorderStyle.solid)),
                              leading: Icon(Icons.picture_as_pdf),
                              title: Text(
                                "Documents",
                              ),
                            ),
                            ListTile(
                              shape: Border(
                                  bottom: BorderSide(
                                      width: 0.3, style: BorderStyle.solid)),
                              leading: Icon(Icons.info),
                              title: Text(
                                "Industrial visit",
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.feedback),
                              title: Text(
                                "Rate & FeedBack",
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                    shape: Border(
                        bottom:
                            BorderSide(width: 0.3, style: BorderStyle.solid)),
                    leading: Icon(Icons.info),
                    title: Text(
                      "About us",
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text(
                      "Rate us",
                    ),
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
