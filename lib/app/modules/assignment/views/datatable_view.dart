import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/modules/assignment/controllers/assignment_controller.dart';

class DatatableView extends GetView<AssignmentController> {
  int type = 0;
  DatatableView({Key? key, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 100.w,
      child: controller.getAppropriateDataTable(type),
    );
  }
}
