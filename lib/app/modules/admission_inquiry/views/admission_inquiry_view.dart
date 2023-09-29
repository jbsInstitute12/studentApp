import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';

import '../controllers/admission_inquiry_controller.dart';

class AdmissionInquiryView extends GetView<AdmissionInquiryController> {
  const AdmissionInquiryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonWidget.getCommonAppBar(
            "Admission Inquiry",
            TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.popins,
                fontWeight: FontWeight.w600),
            false),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  SizedBox(
                    height: 3.h,
                  )
                ],
              ),
            )),
            Positioned(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: AppColors.whiteColor),
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: FontFamily.normalW600PopinsStyle!.copyWith(
                          fontSize: 15.sp,
                        ),
                      )),
                ),
              ],
            ))
          ],
        ));
  }
}
