import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/assignment/views/datatable_view.dart';
import 'package:studentapp/app/modules/assignment/views/todo_card_view.dart';
import 'package:tab_container/tab_container.dart';

class AssignmentController extends GetxController {
  //TODO: Implement AssignmentController

  final count = 0.obs;
  final index = 0.obs;
  late Rx<TabContainerController> tabcon =
      TabContainerController(length: tabScreens.length).obs;

  getAppropriateDataTable(int index) {
    switch (index) {
      case 0:
        return Container(
          height: 100.h,
          width: 100.w,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return TodoCardView();
            },
            itemCount: done.length,
          ),
        );

      case 1:
        return Align(
          alignment: Alignment.topCenter,
          child: DataTable(
              columnSpacing: 20,
              columns: toDoTask.first.keys
                  .map((e) => DataColumn(label: Text(e.toString())))
                  .toList(),
              rows: toDoTask
                  .map((element) => DataRow(
                      cells: element.containsKey("file")
                          ? element.values.map((e) {
                              if (e == "") {
                                return DataCell(ElevatedButton(
                                  onPressed: () {
                                    pickFile(toDoTask.indexOf(element));
                                  },
                                  child: Text(
                                    "Submit",
                                    // textAlign: TextAlign.center,
                                    style: FontFamily.normalW600PopinsStyle,
                                  ),
                                ));
                              } else {
                                return DataCell(
                                  Text(
                                    e.toString(),
                                    // textAlign: TextAlign.center,
                                    style: FontFamily.normalW600PopinsStyle
                                        .copyWith(color: Colors.black),
                                  ),
                                );
                              }
                            }).toList()
                          : element.values
                              .map((element) =>
                                  DataCell(Text(element.toString())))
                              .toList()))
                  .toList()),
        );
      case 2:
        return Align(
          alignment: Alignment.topCenter,
          child: DataTable(
              columns: dueDocs.first.keys
                  .map((e) => DataColumn(label: Text(e.toString())))
                  .toList(),
              rows: dueDocs
                  .map((element) => DataRow(
                      cells: element.values
                          .map((element) => DataCell(Text(element.toString())))
                          .toList()))
                  .toList()),
        );

      default:
        return Align(
          alignment: Alignment.topCenter,
          child: DataTable(
              columnSpacing: 20,
              columns: examMarks.first.keys
                  .map((e) => DataColumn(label: Text(e.toString())))
                  .toList(),
              rows: examMarks
                  .map((element) => DataRow(
                      cells: element.values
                          .map((element) => DataCell(Text(element.toString())))
                          .toList()))
                  .toList()),
        );
    }
  }

  RxList<int> data = <int>[].obs;
  RxList<Map<dynamic, dynamic>> toDoTask = <Map<dynamic, dynamic>>[
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": ""
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": ""
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": ""
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": ""
    },
  ].obs;
  RxList<Map<dynamic, dynamic>> done = <Map<dynamic, dynamic>>[
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "status": "under Review",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "status": "Done",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "status": "reject",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "status": "done",
      "file": "vfdghfv"
    },
  ].obs;
  RxList<Map<dynamic, dynamic>> dueDocs = <Map<dynamic, dynamic>>[
    {"taks": "kghj", "date": "01 sept,2022", "file": "vfdghfv"},
    {"taks": "kghj", "date": "01 sept,2022", "file": "vfdghfv"},
    {"taks": "kghj", "date": "01 sept,2022", "file": "vfdghfv"},
    {"taks": "kghj", "date": "01 sept,2022", "file": "vfdghfv"},
  ].obs;

  RxList<Map<dynamic, dynamic>> examMarks = <Map<dynamic, dynamic>>[
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total \nMarks": "100",
      "gained \nmarks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total \nMarks": "100",
      "gained \nmarks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total \nMarks": "100",
      "gained \nmarks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total \nMarks": "100",
      "gained \nmarks": "70",
      "grade": "A"
    },
  ].obs;
  final ids = [1, 0].obs;

  var labels = [1, 0];

  var tabScreens = [
    DatatableView(type: 0),
    DatatableView(type: 1),
    DatatableView(type: 2),
    DatatableView(type: 3),
  ].obs;

  RxList<dynamic> tabs = <dynamic>[
    "To Do",
    "Done",
    "Due Assignments",
    "Exam Mraks",
  ].obs;

  @override
  void onInit() {
    super.onInit();
    tabcon.value = TabContainerController(
      length: tabScreens.length,
    );

    tabcon.value.addListener(() {
      index.value = tabcon.value.index;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void pickFile(int index) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );

    if (result != null) {
      toDoTask[index]['file'] = result!.paths.first.toString();
    }
    print(toDoTask[index]);
  }
}
