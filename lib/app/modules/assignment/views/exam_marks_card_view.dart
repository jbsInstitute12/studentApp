import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExamMarksCardView extends GetView {
  const ExamMarksCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExamMarksCardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ExamMarksCardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
