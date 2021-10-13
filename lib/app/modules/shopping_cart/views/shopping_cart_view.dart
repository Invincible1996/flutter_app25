import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoppingCartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShoppingCartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
