import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appUtils.dart';
import 'package:studentapp/app/modules/splash/views/splash_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(Sizer(
    builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        title: "Students",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        home: SplashView(),
        navigatorKey: AppUtils.navigationKey,
      );
    },
  ));
}
