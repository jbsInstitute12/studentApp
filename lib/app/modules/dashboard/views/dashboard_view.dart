import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/appIcons.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/dashboard/views/drawer_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: InkWell(onTap: () {
          controller.scfkey.currentState!.isDrawerOpen
              ? controller.scfkey.currentState!.closeDrawer()
              : controller.scfkey.currentState!.openDrawer();

          controller.drawerOpen.value =
              controller.scfkey.currentState!.isDrawerOpen;
        }, child: Obx(
          () {
            return controller.drawerOpen.value
                ? Icon(Icons.menu_open)
                : Icon(Icons.menu);
          },
        )),
        backgroundColor: AppColors.redColor,
        centerTitle: true,
        title: Text(
          "Jbs It Institute",
          style: TextStyle(
              color: Colors.white,
              fontFamily: FontFamily.popins,
              fontSize: 15.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Scaffold(
        extendBody: true,
        key: controller.scfkey,
        endDrawerEnableOpenDragGesture: false,
        drawerEnableOpenDragGesture: false,
        onDrawerChanged: (isOpened) {
          controller.drawerOpen.value = isOpened;
        },
        drawer: DrawerView(),
        bottomNavigationBar: Obx(() {
          return AnimatedBottomNavigationBar.builder(
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.sharpEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            itemCount: controller.screens.length,

            // gapLocation: GapLocation.center,
            // notchSmoothness: NotchSmoothness.verySmoothEdge,
            // leftCornerRadius: 32,
            // rightCornerRadius: 32,
            activeIndex: controller.currentIndex.value,
            tabBuilder: (int index, bool isActive) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      controller.bottomIcons[index],
                      color: isActive
                          ? AppColors.redColor
                          : AppColors.blackTextColor,
                    ),
                    Text(
                      controller.names[index],
                      style: TextStyle(
                          color: isActive
                              ? AppColors.redColor
                              : AppColors.blackTextColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.popins),
                    )
                  ],
                ),
              );
            },
            onTap: (int x) {
              controller.currentIndex.value = x;
            },
          );
        }),
        body: Obx(() {
          return controller.screens[controller.currentIndex.value];
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.redColor,
          child: Icon(
            AppIcons.icCalender,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
