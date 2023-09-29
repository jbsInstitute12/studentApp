import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/fontFamily.dart';

class commonDocumentCard extends GetView {
  String date;
  String title;
  String std;
  String image;
  commonDocumentCard(
      {Key? key,
      required this.date,
      required this.title,
      required this.std,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      width: 100.w,
      child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text("Date : $date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: FontFamily.popins,
                                  fontSize: 13.sp)),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text("Title : ${title}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontFamily.popins,
                                  fontSize: 13.sp)),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text("std - ${std}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontFamily.popins,
                                  fontSize: 13.sp)),
                          SizedBox(
                            height: 0.5.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: VerticalDivider(
                      color: Colors.black12,
                      width: 20,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Image.asset(
                    image,
                    height: 80,
                    
                    width: 80,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
