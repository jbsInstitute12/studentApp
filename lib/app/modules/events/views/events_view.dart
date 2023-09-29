import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';
import '../controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
  EventsView({Key? key}) : super(key: key);
  final CalendarController _controller = CalendarController();
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: const Text("Calender"),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 17, 27, 85),
        ),
        body: Container(
          color: Colors.white,
          height: 100.h,
          child: Stack(
            children: [
              Container(
                height: 25.h,
                width: 100.w,
                color: const Color.fromARGB(255, 17, 27, 85),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                child: Row(
                  children: [
                    Text(
                      "EVENTS & HOLIDAYS",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Column(
                      children: [
                        SfCalendar(
                          initialSelectedDate: DateTime.now(),
                          controller: _controller,
                          onSelectionChanged: selectionChanged,
                          cellBorderColor: Colors.transparent,
                          todayHighlightColor:
                              const Color.fromARGB(255, 11, 23, 87),
                          view: CalendarView.month,
                          monthViewSettings: const MonthViewSettings(
                              showAgenda: false, dayFormat: 'EEE'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(() {
                return Positioned(
                  left: 5.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: SizedBox(
                        width: 90.w,
                        height: 18.h,
                        child: Column(
                          children: [
                            Text(
                              '${controller.text.value}',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
              Padding(
                padding: EdgeInsets.only(left: 60.w),
                child: Image.asset(
                    "assets/gif/54f5df0b186a33d0d3c8a4784fb5e9f7.gif"),
              )
            ],
          ),
        ));
  }

  void selectionChanged(CalendarSelectionDetails details) {
    if (_controller.view == CalendarView.month ||
        _controller.view == CalendarView.timelineMonth) {
      controller.text.value =
          DateFormat('dd, MMMM yyyy').format(details.date!).toString();
    } else {
      controller.text.value =
          DateFormat('dd, MMMM yyyy hh:mm a').format(details.date!).toString();
    }
  }
}
