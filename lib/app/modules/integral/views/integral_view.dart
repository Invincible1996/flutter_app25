import 'package:flutter/material.dart';
import 'package:flutter_app25/app/widget/base_view.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';

import '../controllers/integral_controller.dart';

class IntegralView extends GetView<IntegralController> {
  const IntegralView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: const Text('我的积分'),
      ),
      body: Obx(
        () => BaseView(
          child: const Text('获取数据成功'),
          pageState: controller.pageState.value,
        ),
      ),
    );
  }
}
