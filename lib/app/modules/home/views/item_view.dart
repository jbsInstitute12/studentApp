import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/home/controllers/home_controller.dart';

class ItemView extends GetView<HomeController> {
  int index;
  int random;
  ItemView({Key? ke, required this.index, required this.random});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 5.sp,
        color: AppColors.mainHomeScreenColors[this.random],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.sp)),
              child: Icon(
                Icons.calendar_month,
                size: 25.sp,
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            SizedBox(
                width: 25.w,
                child: Text(
                  controller.screensName[this.random],
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: FontFamily.popins,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w900),
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
