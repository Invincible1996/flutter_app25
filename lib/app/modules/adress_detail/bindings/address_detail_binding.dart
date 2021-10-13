import 'package:get/get.dart';

import '../controllers/address_detail_controller.dart';

class AddressDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressDetailController>(
      () => AddressDetailController(),
    );
  }
}
