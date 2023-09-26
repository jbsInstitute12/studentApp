import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/appStrings.dart';
import 'package:studentapp/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:studentapp/app/modules/dashboard/views/dashboard_view.dart';
import 'package:studentapp/gen/assets.gen.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 7.h,
          ),
          Image.asset(Assets.illustration.signInImage.path),
          SizedBox(
            height: 8.h,
            child: Text(
              AppStrings.studentLogin,
              style: TextStyle(
                  color: AppColors.blackTextColor,
                  fontSize: 20.sp,
                  fontFamily: GoogleFonts.getFont("Poppins").fontFamily,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Card(
            elevation: 4.sp,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.sp)),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  iconColor: Colors.grey,
                  focusColor: AppColors.redColor,
                  prefixIconColor: Colors.grey,

                  // hoverColor: AppColors.redColor,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      borderSide: BorderSide.none),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      borderSide: BorderSide.none),
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                      color: AppColors.greyTextColor,
                      letterSpacing: 1,
                      fontFamily: GoogleFonts.getFont("Poppins").fontFamily,
                      fontWeight: FontWeight.w800),
                  filled: true,
                  fillColor: AppColors.geryColor),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.redColor,
                  fixedSize: Size(50.w, 4.h),
                  onPrimary: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.sp))),
              onPressed: () {
                Get.offAll(() => DashboardView(), binding: DashboardBinding());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // SizedBox(width: 10.5.w),
                    Text(
                      AppStrings.signIn,
                      style: TextStyle(color: Colors.white, fontSize: 11.sp),
                    ),
                    SizedBox(width: 1.5.w),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.whiteColor,
                    ),
                    // SizedBox(width: 10.5.w),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
