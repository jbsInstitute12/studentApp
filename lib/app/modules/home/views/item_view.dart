import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ItemView extends GetView {
  const ItemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ItemView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ItemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
