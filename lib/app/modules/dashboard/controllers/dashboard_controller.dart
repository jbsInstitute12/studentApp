import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/modules/Profile/views/profile_view.dart';
import 'package:studentapp/app/modules/home/views/home_view.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController


  RxBool tileExpanded=false.obs;
  final currentIndex = 0.obs;

  GlobalKey<ScaffoldState> scfkey = GlobalKey<ScaffoldState>();

  List<IconData> bottomIcons = [AppIcons.icHome, AppIcons.icProfile];

  RxList<String> names = ["Home", "Profile"].obs;

  RxList<Widget> screens = <Widget>[HomeView(), ProfileView()].obs;

  late OverlayEntry popUpDialog;
  var drawerOpen = false.obs;

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
}
