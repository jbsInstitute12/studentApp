import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/dashboard/controllers/dashboard_controller.dart';

class PopMenuView extends GetView<DashboardController> {
  const PopMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          popupMenuTheme: PopupMenuThemeData().copyWith(
        color: Colors.white,
      )),
      child: PopupMenuButton<int>(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        itemBuilder: (context) => [
          // popupmenu item 1
          PopupMenuItem(
            value: 1,
            // row has two child icon and text.
            child: Row(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.black,
                  weight: 100,
                ),
                SizedBox(
                  // sized box with width 10

                  width: 10,
                ),
                Text("Share App",
                    style: TextStyle(
                        color: AppColors.redColor,
                        fontFamily: FontFamily.popins,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
          // popupmenu item 2
          PopupMenuItem(
            value: 2,
            // row has two child icon and text
            child: Row(
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.black,
                  weight: 100,
                ),
                SizedBox(
                  // sized box with width 10
                  width: 10,
                ),
                Text(
                  "Sign Out",
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontFamily: FontFamily.popins,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
        offset: Offset(0, 80),
        color: Colors.white,
        elevation: 2.sp,
      ),
    );
  }
}
