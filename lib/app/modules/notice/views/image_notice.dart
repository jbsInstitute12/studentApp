import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sizer/sizer.dart';

class imagenoticepage extends StatefulWidget {
  const imagenoticepage({super.key});

  @override
  State<imagenoticepage> createState() => _imagenoticepageState();
}

class _imagenoticepageState extends State<imagenoticepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Image Notice", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.sp),
                      side: BorderSide(width: 1.0)),
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Title : sem - 2 Fees",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 2.5.h),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 10, left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 20.h,
                          width: 100.w,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
