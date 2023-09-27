import 'package:flutter/material.dart';
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

  static getDrawerListTile({VoidCallback? callback, dynamic icon, required String title}) {
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
}
