import 'package:flutter/material.dart';
import 'package:flutter_app25/app/style/custom_style.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OrderView')),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Container(
                height: 45,
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('全部'),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 45,
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('已完成'),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                alignment: Alignment.center,
              ),
            ],
            labelColor: CustomStyle.primaryColor,
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text('1'),
                Text('2'),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
