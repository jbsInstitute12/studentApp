import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/data/views/common_text_form_field_view.dart';

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
              fontWeight: FontWeight.w600,
            ),
            false),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Student Name",
                    ),
                    CommonTextFormFieldView(
                      hintText: "student Name",
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Standard",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Standard",
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Date Of Birth",
                    ),
                    CommonTextFormFieldView(
                      con: TextEditingController(
                          text: DateTime.now().toString()),
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Previous School Name",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Previous School Name",
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Mobile number",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Mobile Number",
                      inputType: TextInputType.number,
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Address",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Address",
                      inputType: TextInputType.streetAddress,
                      maxLines: 8,
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Message",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Message",
                      inputType: TextInputType.streetAddress,
                      maxLines: 6,
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    commonWidget.getCommonTextWidgetForForm(
                      title: "Reference Name",
                    ),
                    CommonTextFormFieldView(
                      hintText: "Reference Name",
                      inputType: TextInputType.streetAddress,
                      // maxLines: 6,
                      prefix: null,
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 8.h,
                    )
                  ],
                ),
              ),
            )),
            Positioned(
              bottom: 0,
              child: Card(
                elevation: 10.sp,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.8.h),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(90.w, 5.h),
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
              ),
            )
          ],
        ));
  }
}
