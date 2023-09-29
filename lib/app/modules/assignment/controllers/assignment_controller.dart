import 'package:get/get.dart';

class AssignmentController extends GetxController {
  //TODO: Implement AssignmentController

  final count = 0.obs;

  RxList<int> data = <int>[].obs;
  RxList<Map<dynamic, dynamic>> toDoTask = <Map<dynamic, dynamic>>[
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": "vfdghfv"
    },
    {
      "taks": "kghj",
      "date": "01 sept,2022",
      "endDate": "02 sept,2023",
      "file": "vfdghfv"
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
      "total Marks": "100",
      "gained marks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total Marks": "100",
      "gained marks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total Marks": "100",
      "gained marks": "70",
      "grade": "A"
    },
    {
      "date": "01 sept,2022",
      "name": "kghj",
      "total Marks": "100",
      "gained marks": "70",
      "grade": "A"
    },
  ].obs;
  @override
  void onInit() {
    super.onInit();
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
}
