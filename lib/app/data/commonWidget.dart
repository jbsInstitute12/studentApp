import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';

class commonWidget {
  static getCommonAppBar(String? title, TextStyle? style, bool? centerTitle) {
    return AppBar(
      backgroundColor: AppColors.redColor,
      centerTitle: centerTitle ?? false,
      title: Text(
        title ?? "ghvfh",
        style: style ??
            TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.popins,
                fontWeight: FontWeight.w700),
      ),
    );
  }

  static getDrawerListTile(
      {VoidCallback? callback, dynamic icon, required String title}) {
    return ListTile(
      onTap: () {
        callback?.call();
        // Get.toNamed(Routes.MANAGEMENT_MESSAGE);
      },
      shape: Border(bottom: BorderSide(width: 0.3, style: BorderStyle.solid)),
      leading: Icon(icon),
      title: Text(
        title,
      ),
    );
  }

  static getCommonTextWidgetForForm(
      {String? title, double? leftPadding, TextStyle? style}) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: Text(
        title ?? "",
        style: style ??
            FontFamily.normalW600PopinsStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp),
      ),
    );
  }
}
