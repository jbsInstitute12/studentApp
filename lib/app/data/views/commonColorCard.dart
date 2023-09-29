import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';

class CommonColorCard extends GetView {
  final String name;
  final VoidCallback onPressed;
  final Color color;
  const CommonColorCard(
      {super.key,
      required this.name,
      required this.onPressed,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.3.h),
      child: InkWell(
          onTap: onPressed,
          child: Card(
            elevation: 5.sp,
            color: color,
            child: Container(
              height: 10.h,
              width: double.infinity,
              child: Row(children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: const Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  name,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                )
              ]),
            ),
          )),
    );
  }
}
