import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';

import '../controllers/my_address_controller.dart';

class MyAddressView extends GetView<MyAddressController> {
  const MyAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyAddressView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.addressList.length,
          itemBuilder: (_, index) => Slidable(
            controller: controller.slidableController,
            actionPane: const SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.indigoAccent,
                  child: Text('$index'),
                  foregroundColor: Colors.white,
                ),
                title: const Text('Tile n°3'),
                subtitle: const Text('SlidableDrawerDelegate'),
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
