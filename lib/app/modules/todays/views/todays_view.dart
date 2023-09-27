import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:studentapp/app/data/commonWidget.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/todays/views/card_view.dart';

import '../controllers/todays_controller.dart';

class TodaysView extends GetView<TodaysController> {
  const TodaysView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonWidget.getCommonAppBar(
          "Todays",
          TextStyle(
              color: Colors.white,
              fontFamily: FontFamily.popins,
              fontWeight: FontWeight.w600),
          true),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return CardView(
            thought:
                "jhsdgfuhgfyhgfuygfgufguyfgrfuygrfuygrfuygrfyywerfguyfguwfuywgfbcvbfbdbfgbhdfgfgghdfshfhddghfdhfwehfwehfesdhfdhfvchdvcghdvcgsdvcghvcgvdghcvghdvcghdvcghdvcgvghcvGVJHDGGHDFJKHFKHDJKFHJKHJKHJKHJhhjkdhjkhgdfjghjkhgjkhgrjghrhjkyguyfgwfuguyfgfyfuygugfuygfufguy",
          );
        },
        itemCount: 20,
      )),
    );
  }
}
