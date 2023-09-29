import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appStrings.dart';

import '../controllers/facility_controller.dart';

class FacilityView extends GetView<FacilityController> {
  const FacilityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: const Text(facilityString.appbarname,
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 25.h, autoPlay: true),
              items: [
                "https://img.freepik.com/premium-photo/opened-book-with-flying-pages-butterflies-dark-backgroundgenerative-ai_391052-12859.jpg"
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                        elevation: 5,
                        child: Center(
                            child: Image.network(
                          i,
                          fit: BoxFit.fill,
                        )));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        height: 10.h,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Image.network(
                                "https://cdn-icons-png.flaticon.com/512/5214/5214173.png"),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "CCTV Cameras",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
