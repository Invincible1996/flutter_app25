import 'package:get/get.dart';

import '../controllers/integral_controller.dart';

class IntegralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntegralController>(
      () => IntegralController(),
    );
  }
}
