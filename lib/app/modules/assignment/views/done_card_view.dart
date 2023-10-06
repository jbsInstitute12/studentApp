import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DoneCardView extends GetView {
  const DoneCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 80.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            elevation: 10.sp,
          ),
        ],
      ),
    );
  }
}
