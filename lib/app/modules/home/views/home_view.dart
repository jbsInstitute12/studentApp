import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              CarouselSlider(
                options: CarouselOptions(height: 200.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.sp))),
                          elevation: 10.sp,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 20.h,
                              // margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.sp))),
                              child: Center(
                                  child: Text(
                                'text $i',
                                style: TextStyle(fontSize: 16.0),
                              ))),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                constraints: BoxConstraints(
                    minHeight: 10.h,
                    maxHeight: 80.h,
                    maxWidth: 100.w,
                    minWidth: 100.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    int rand = Random()
                        .nextInt(AppColors.mainHomeScreenColors.length - 1);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5.sp,
                        color: AppColors.mainHomeScreenColors[rand],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Column(
                          children: [],
                        ),
                      ),
                    );
                  },
                  itemCount: controller.screensName.length,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
            ],
          )),
    );
  }
}
