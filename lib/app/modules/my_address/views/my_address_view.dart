import 'package:flutter/material.dart';
import 'package:flutter_app25/app/routes/app_pages.dart';
import 'package:flutter_app25/app/style/custom_style.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/my_address_controller.dart';

class MyAddressView extends GetView<MyAddressController> {
  const MyAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        searchBar: true,
        title: const Text('MyAddress'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.addressList.length,
          itemBuilder: (_, index) => Slidable(
            controller: controller.slidableController,
            actionPane: const SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.ADRESS_DETAIL);
              },
              child: Container(
                // height: 80,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color(0XFFEEEEEE),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Text(
                            '??????',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                          margin: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: CustomStyle.primaryColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Text(
                            '???',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text(
                          '?????????????????????????????????',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '????????????????????????????????????????????????????????????12???1701',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          '?????????????????????????????????',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '18999888899',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => _showSnackBar(index),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showSnackBar(int index) {
    controller.removeItem(index);
  }
}
