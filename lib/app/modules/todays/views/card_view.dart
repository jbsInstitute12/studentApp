import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/fontFamily.dart';

class CardView extends GetView {
  String? thought;
  CardView({Key? key, this.thought}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 10.sp,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 2.w),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.grey.shade300, Colors.white])),
                child: Text(
                  "Today's Thought",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: FontFamily.popins,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 2.w),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.grey.shade300, Colors.white])),
                child: Text(thought.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        // fontSize: 18.sp,
                        fontFamily: FontFamily.popins,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
