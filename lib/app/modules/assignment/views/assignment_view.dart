import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';

import '../controllers/assignment_controller.dart';
import 'package:flutter_folding_card/flutter_folding_card.dart';

class AssignmentView extends GetView<AssignmentController> {
  const AssignmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonWidget.getCommonAppBar(
            "Assignments", FontFamily.normalW600PopinsStyle, false),
        body: ListView(
          children: [
            Obx(() {
              return FoldingCard(
                foldOut: controller.data.contains(0),
                cover: InkWell(
                  onTap: () {
                    controller.data.contains(0)
                        ? controller.data.remove(0)
                        : controller.data.add(0);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp)),
                      elevation: 10.sp,
                      child: Container(
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 10.h,
                          color: Colors.green,
                          child: Text(
                            "Done",
                            style: FontFamily.normalW600PopinsStyle.copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          )),
                    ),
                  ),
                ),
                expandedCard: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DataTable(
                          columns: controller.done.first.keys
                              .map((e) => DataColumn(label: Text(e.toString())))
                              .toList(),
                          rows: controller.done
                              .map((element) => DataRow(
                                  cells: element.values
                                      .map((element) =>
                                          DataCell(Text(element.toString())))
                                      .toList()))
                              .toList()),
                    ],
                  )),
                ),
                expandedHeight: 40.h,
                foldingHeight: 10.h,
              );
            }),
            SizedBox(
              height: 4.h,
            ),
            Obx(() {
              return FoldingCard(
                foldOut: controller.data.contains(1),
                cover: InkWell(
                  onTap: () {
                    controller.data.contains(1)
                        ? controller.data.remove(1)
                        : controller.data.add(1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp)),
                      elevation: 10.sp,
                      child: Container(
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 10.h,
                          color: AppColors.mainHomeScreenColors[2],
                          child: Text(
                            "To Do",
                            style: FontFamily.normalW600PopinsStyle.copyWith(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w900,
                                color: Colors.black38),
                          )),
                    ),
                  ),
                ),
                expandedCard: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                      child: DataTable(
                          columns: controller.done.first.keys
                              .map((e) => DataColumn(label: Text(e.toString())))
                              .toList(),
                          rows: controller.done
                              .map((element) => DataRow(
                                  cells: element.values
                                      .map((element) =>
                                          DataCell(Text(element.toString())))
                                      .toList()))
                              .toList())),
                ),
                expandedHeight: 40.h,
                foldingHeight: 10.h,
              );
            }),
            SizedBox(
              height: 4.h,
            ),
            Obx(() {
              return FoldingCard(
                foldOut: controller.data.contains(2),
                cover: InkWell(
                  onTap: () {
                    controller.data.contains(2)
                        ? controller.data.remove(2)
                        : controller.data.add(2);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp)),
                      elevation: 10.sp,
                      child: Container(
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 10.h,
                          color: Colors.red.shade300,
                          child: Text(
                            "Due Date Assignment",
                            style: FontFamily.normalW600PopinsStyle.copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          )),
                    ),
                  ),
                ),
                expandedCard: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                      child: DataTable(
                          columns: controller.done.first.keys
                              .map((e) => DataColumn(label: Text(e.toString())))
                              .toList(),
                          rows: controller.done
                              .map((element) => DataRow(
                                  cells: element.values
                                      .map((element) =>
                                          DataCell(Text(element.toString())))
                                      .toList()))
                              .toList())),
                ),
                expandedHeight: 40.h,
                foldingHeight: 10.h,
              );
            })
          ],
        ));
  }
}
