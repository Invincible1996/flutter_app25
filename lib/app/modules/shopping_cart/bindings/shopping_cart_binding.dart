import 'package:get/get.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingCartController>(
      () => ShoppingCartController(),
    );
  }
}
