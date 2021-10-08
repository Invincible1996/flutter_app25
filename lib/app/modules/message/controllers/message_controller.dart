import 'package:get/get.dart';
import '../../home/provider/match_provider.dart';

class MessageController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    logger.v('onInit');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
