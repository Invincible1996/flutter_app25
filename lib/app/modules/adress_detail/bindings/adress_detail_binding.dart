import 'package:get/get.dart';

import '../controllers/adress_detail_controller.dart';

class AdressDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdressDetailController>(
      () => AdressDetailController(),
    );
  }
}
