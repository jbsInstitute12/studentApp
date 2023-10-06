import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flip_card/flip_card.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/gen/assets.gen.dart';

class TodoCardView extends GetView {
  const TodoCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          width: 100.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Card(
                elevation: 10.sp,
                child: Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    height: 195,
                    width: 93.w,
                    child: Column(
                      children: [
                        Text(
                          "Task Name",
                          style: FontFamily.normalW600PopinsStyle
                              .copyWith(color: Colors.black, fontSize: 15.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "hfvsdghfvdsfuhdghfgsdyhfgsdugfsdgfuydgfgsduyffgbfhbgfhvbfbbvbfbvfbbvhfvbhfbvbhhvfhfbhvbyfvuyfgyudgsuygsduyfgsdgyfgdgfuysdgfuysdgfygfyugfuydgfyudgfufdgfdgfdgfgagsgdfgafgsdfgsgsdfgsdgsdfsrgysdfuysdfgydgfdgyfugsdfysdgyfgsdygfgdyufgvduhcjhxvchvbchvsdhvcdvhcvhdvhcvhsdvchvdhvchdchvdfvdfgk",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: FontFamily.normalW600PopinsStyle.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        SizedBox(
                          height: 0.5.h,
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Assign Date",
                                    style: FontFamily.normalW600PopinsStyle
                                        .copyWith(
                                            color: AppColors.redColor,
                                            fontSize: 13.sp),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.3.h,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "12 sep,2023",
                                    style: FontFamily.normalW600PopinsStyle
                                        .copyWith(
                                            color: AppColors.redColor,
                                            fontSize: 10.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Due Date",
                                    style: FontFamily.normalW600PopinsStyle
                                        .copyWith(
                                            color: AppColors.redColor,
                                            fontSize: 13.sp),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.3.h,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "12 sep,2023",
                                    style: FontFamily.normalW600PopinsStyle
                                        .copyWith(
                                            color: AppColors.redColor,
                                            fontSize: 10.sp),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 20.w,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "1",
                      style: FontFamily.normalW600PopinsStyle.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w800),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.redColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.sp),
                      )),
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 25.w,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "Submit",
                        style: FontFamily.normalW600PopinsStyle.copyWith(
                            fontSize: 15.sp, fontWeight: FontWeight.w800),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.sp),
                        )),
                  ),
                ),
                bottom: 0,
                right: 0,
              )
            ],
          ),
        ),
      ),
      back: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10.sp,
          child: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            height: 195,
            width: 93.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50.w,
                  height: 195,
                  child: Text(
                    "kvgfshgbhgyrgyfgrf4uyrfgyegfwegfywegfydgfgsdufdvfdvfdvfvfygfgdfuygduvdfgdfgdfgfdgdfgdfgxfgfgdfgadfvdfgfxfsdfdfdsfgdgfdgfgfdfghfhfghgfhjhtyjhyjygyusdgfuydbfsduybfuysdbyudbfduybfdbfdygfdgfyudgfydfuygudgfuysdgfuysdgfysdgfygfygduyfgdgfyudgfguy",
                    style: FontFamily.normalW600PopinsStyle
                        .copyWith(color: Colors.black),
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Expanded(
                    child: Card(
                  // margin: EdgeInsets.zero,
                  elevation: 10.sp,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.sp),
                          bottomLeft: Radius.circular(10.sp))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.sp),
                          bottomLeft: Radius.circular(10.sp)),
                      child: Image.asset(Assets.icons.pdf.path)),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
