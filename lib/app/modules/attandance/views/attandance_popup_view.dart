import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/fontFamily.dart';
import 'package:studentapp/app/modules/attandance/controllers/attandance_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

createPopUpDialog(BuildContext context) {
  return OverlayEntry(
    builder: (context) {
      return Align(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            alignment: Alignment.center,
            width: 70.w,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.shade600.withOpacity(0.5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SfCircularChart(
                    legend: Legend(
                        isResponsive: true,
                        isVisible: true,
                        title: LegendTitle(
                            text: "Data",
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: FontFamily.popins)),
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontFamily: FontFamily.popins,
                            fontWeight: FontWeight.w600),
                        overflowMode: LegendItemOverflowMode.wrap),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    title: ChartTitle(
                        text: "Attandance",
                        textStyle: TextStyle(
                            fontFamily: FontFamily.popins,
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    series: <CircularSeries>[
                      // Render pie chart
                      DoughnutSeries<ChartData, String>(
                        dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            labelPosition: ChartDataLabelPosition.outside,
                            // color: Colors.white,
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        xValueMapper: (ChartData data, _) => data.x as String,
                        yValueMapper: (ChartData data, _) => data.y,
                        // dataLabelMapper: (ChartData data, _) => data.x,
                        explode: true,
                        explodeIndex: 1,

                        enableTooltip: true,
                        dataSource: chartData,
                        // animationDuration: 200,
                        animationDelay: 100.0,
                        name: "Attandance",
                        // pointRenderMode: PointRenderMode.gradient,
                        legendIconType: LegendIconType.circle,

                        pointColorMapper: (ChartData data, _) => data.color,
                      )
                    ]),
              ],
            ),
          ),
        ),
      );
    },
  );
}
