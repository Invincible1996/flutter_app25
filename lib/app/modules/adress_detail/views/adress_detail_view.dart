import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adress_detail_controller.dart';

class AdressDetailView extends GetView<AdressDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdressDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AdressDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
