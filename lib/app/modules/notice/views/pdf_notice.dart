import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/commoncard.dart';

class pdfnoticepage extends StatefulWidget {
  const pdfnoticepage({super.key});

  @override
  State<pdfnoticepage> createState() => _pdfnoticepageState();
}

class _pdfnoticepageState extends State<pdfnoticepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("PDF Notice", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Date : 10-09-2022",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.sp)),
                                    Text("Title : new time table test",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp)),
                                    Text("std - 8A",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20),
                                child: VerticalDivider(
                                  color: Colors.black12,
                                  width: 20,
                                  thickness: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                      "https://e7.pngegg.com/pngimages/598/645/png-clipart-pdf-computer-icons-adobe-acrobat-algemene-voorwaarden-text-logo-thumbnail.png"),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
