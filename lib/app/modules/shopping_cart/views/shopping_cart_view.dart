import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_cart_controller.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('ShoppingCartView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (_, index) => Container(
          margin: const EdgeInsets.only(
            top: 15,
            right: 15,
            left: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://bigshot.oss-cn-shanghai.aliyuncs.com/nba/bos.png',
                width: 120,
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffe6e6e6),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(3),
                      iconSize: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                    const Text('1'),
                    IconButton(
                      padding: const EdgeInsets.all(3),
                      onPressed: () {},
                      icon: const Icon(Icons.remove),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
