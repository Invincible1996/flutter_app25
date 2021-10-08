import 'package:flutter/material.dart';
import 'package:flutter_app25/app/style/custom_style.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: const Text('Setting'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '接收通知',
                    style: TextStyle(fontSize: 14),
                  ),
                  GFToggle(
                    onChanged: (val) {},
                    value: true,
                    type: GFToggleType.ios,
                    enabledTrackColor: CustomStyle.primaryColor,
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
                text: 'login out',
                size: GFSize.LARGE,
                fullWidthButton: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
