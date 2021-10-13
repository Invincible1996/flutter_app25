import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/address_detail_controller.dart';

class AddressDetailView extends GetView<AddressDetailController> {
  const AddressDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF6F6F3),
      appBar: AppBar(
        title: const Text('编辑地址'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Get.defaultDialog(
                radius: 6,
                title: '删除地址',
                middleText: '确认删除地址',
                titlePadding: const EdgeInsets.all(10),
                onCancel: () {},
                onConfirm: () {},
                cancel: ElevatedButton(
                  onPressed: () {},
                  child: const Text('确认'),
                ),
                confirm: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('取消'),
                ),
              );
            },
            child: const Text(
              '删除',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0XFFEEEEEE),
                ),
              ),
            ),
            child: Row(
              children: [
                const Text('收货人'),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0XFFEEEEEE),
                ),
              ),
            ),
            child: Row(
              children: [
                const Text('所在地区'),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text('上海市嘉定区马陆镇'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on_sharp,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0XFFEEEEEE),
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('详细地址'),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text(
                    '上海市嘉定区马陆镇上海市嘉定区马陆镇上海市嘉定区马陆镇上海市嘉定区马陆镇上海市嘉定区马陆镇',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic_rounded,
                  ),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
            ),
            child: GFButton(
              onPressed: () => GFToast.showToast(
                'You pushed the login out!',
                context,
                toastPosition: GFToastPosition.CENTER,
                toastBorderRadius: 6.0,
              ),
              text: 'save',
              size: GFSize.LARGE,
              fullWidthButton: true,
            ),
          )
        ],
      ),
    );
  }
}
