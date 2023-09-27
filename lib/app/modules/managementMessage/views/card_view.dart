import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/fontFamily.dart';

class CardView extends GetView {
  const CardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return Card(
    //   elevation: 5.sp,
    //   child: Container(
    //     child: Column(
    //       children: [
    //         SizedBox(
    //           height: 10.h,
    //           width: 100.w,
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Card(
    //                 shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(5.sp)),
    //                 child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(5.sp),
    //                     child: CachedNetworkImage(
    //                         imageUrl:
    //                             "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
    //               )
    //             ],
    //           ),
    //         )

    //       ],
    //     ),
    //     constraints: BoxConstraints(
    //         minWidth: 80.w, maxWidth: 100.w, minHeight: 10.h, maxHeight: 25.h),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 5.sp,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 100.w,
              // height: 20.h,
              constraints: BoxConstraints(minHeight: 19.h),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Card(
                        elevation: 10.sp,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.sp),
                          child: Image.network(
                            "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            height: 15.h,
                            width: 30.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Kakdiya Monil Sir.",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontFamily.popins,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    height: 10.sp,
                    thickness: 2.5,
                    endIndent: 10,
                    indent: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      // overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                          fontFamily: FontFamily.popins,
                          fontWeight: FontWeight.w600),
                      // maxLines: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
