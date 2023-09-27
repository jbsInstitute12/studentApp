import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/modules/managementMessage/views/card_view.dart';

import '../controllers/management_message_controller.dart';

class ManagementMessageView extends GetView<ManagementMessageController> {
  const ManagementMessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: commonWidget.getCommonAppBar(
          "Management Message", TextStyle(color: AppColors.whiteColor), false),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return CardView();
        },
        itemCount: 10,
      )),
    );
  }
}
