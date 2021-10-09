import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';

import '../controllers/integral_controller.dart';

class IntegralView extends GetView<IntegralController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: const Text('我的积分'),
      ),
      body: const Center(
        child: Text(
          'IntegralView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
