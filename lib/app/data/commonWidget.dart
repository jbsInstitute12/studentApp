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
}
