import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class MyAddressController extends GetxController {
  final SlidableController slidableController = SlidableController();

  var addressList = [].obs;

  @override
  void onInit() {
    super.onInit();
    for (var i = 0; i < 10; i++) {
      addressList.add(i);
    }
  }

  @override
  void onClose() {}

  void removeItem(index) {
    addressList.removeAt(index);
  }
}
