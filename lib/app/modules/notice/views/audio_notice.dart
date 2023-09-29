import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appStrings.dart';
import 'dart:ui' as ui;

class audionoticepage extends StatefulWidget {
  const audionoticepage({super.key});

  @override
  State<audionoticepage> createState() => _audionoticepageState();
}

class _audionoticepageState extends State<audionoticepage> {
  PlayerController controll = PlayerController();
   final List<double> waveformData=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(noticeString.audionotice,
            style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: 0.5.h, bottom: 0.5.h, left: 0.5.w, right: 0.5.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20)),
              height: 40.h,
              width: 100.h,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, top: 0.5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DATE : 02-OCT-2000",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      "INFORMATION ABOUT AUDIO NOTICE",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                    ),
                    AudioFileWaveforms(
                      size: Size(MediaQuery.of(context).size.width, 100.0),
                      playerController: controll,
                      enableSeekGesture: true,
                      waveformType: WaveformType.long,
                      waveformData: waveformData,
                      playerWaveStyle: const PlayerWaveStyle(
                        fixedWaveColor: Colors.white54,
                        liveWaveColor: Colors.blueAccent,
                        spacing: 6,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void init() async {
    final waveformData = await controll.extractWaveformData(
      path: 'assets/mp/e.mp3',
      noOfSamples: 100,
    );
  }
}
