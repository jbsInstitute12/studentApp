import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class descriptionnoticepage extends StatefulWidget {
  const descriptionnoticepage({super.key});

  @override
  State<descriptionnoticepage> createState() => _descriptionnoticepageState();
}

class _descriptionnoticepageState extends State<descriptionnoticepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(" Description Notice",
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Text("Description Notice page is working"),
        ));
  }
}
