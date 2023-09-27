import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/appStrings.dart';
import 'package:studentapp/app/data/commoncard.dart';
import 'package:studentapp/app/modules/notice/views/description_notice.dart';
import 'package:studentapp/app/modules/notice/views/image_notice.dart';
import 'package:studentapp/app/modules/notice/views/pdf_notice.dart';

import '../controllers/notice_controller.dart';

class NoticeView extends GetView<NoticeController> {
  const NoticeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.black,
              )),
          title: Text(noticeString.appbarname,
              style: TextStyle(color: Colors.black)),
          centerTitle: false,
        ),
        body: Builder(builder: (context) {
          int random1 = Random().nextInt(AppColors.mainHomeScreenColors.length);
          int random2 = Random().nextInt(AppColors.mainHomeScreenColors.length);
          int random3 = Random().nextInt(AppColors.mainHomeScreenColors.length);
          int random4 = Random().nextInt(AppColors.mainHomeScreenColors.length);
          return Column(
            children: [
              CommonCard(
                name: noticeString.descrptionnotice,
                onPressed: () {
                  Get.to(descriptionnoticepage());
                },
                color: AppColors.mainHomeScreenColors[random1],
              ),
              CommonCard(
                name: noticeString.pdfnotice,
                onPressed: () {
                  Get.to(pdfnoticepage());
                },
                color: AppColors.mainHomeScreenColors[random2],
              ),
              CommonCard(
                name: noticeString.imagenotice,
                onPressed: () {
                  Get.to(imagenoticepage());
                },
                color: AppColors.mainHomeScreenColors[random3],
              ),
              CommonCard(
                name: noticeString.audionotice,
                onPressed: () {},
                color: AppColors.mainHomeScreenColors[random4],
              ),
            ],
          );
        }));
  }
}
