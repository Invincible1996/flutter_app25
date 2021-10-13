import 'package:flutter/material.dart';
import 'package:flutter_app25/app/style/custom_style.dart';
import 'package:underline_indicator/underline_indicator.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OrderView')),
      backgroundColor: const Color(0XFFF5F5F5),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: TabBar(
              indicatorWeight: 2,
              controller: _tabController,
              // indicator: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              indicator: const UnderlineIndicator(
                  strokeCap: StrokeCap.round, // Set your line endings.
                  borderSide: BorderSide(
                    color: CustomStyle.primaryColor,
                    width: 2,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 30.0)),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
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
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('待付款'),
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
                  height: 30,
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
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, index) => Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: index == 4 ? 10 : 0,
                    ),
                    // height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '华莱士-全鸡汉堡',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text('已完成'),
                          ],
                        ),
                        Row(
                          children: [
                            Image.network(
                              'https://bigshot.oss-cn-shanghai.aliyuncs.com/nba/bos.png',
                              width: 100,
                              height: 100,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '下单时间：2021-10-10 12：41',
                              style: TextStyle(),
                            ),
                            Text('合计 ¥22'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                side: const BorderSide(
                                  width: 1,
                                  color: CustomStyle.primaryColor,
                                ),
                                minimumSize: const Size(70, 32),
                              ),
                              child: const Text(
                                '保险服务',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                side: const BorderSide(
                                  width: 1,
                                  color: CustomStyle.primaryColor,
                                ),
                                minimumSize: const Size(70, 32),
                              ),
                              child: const Text('保险服务'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                // maximumSize: const Size(
                                //   70,
                                //   35,
                                // ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                // padding: EdgeInsets.all(0),
                                side: const BorderSide(
                                  width: 1,
                                  color: CustomStyle.primaryColor,
                                ),
                                minimumSize: const Size(70, 32),
                              ),
                              child: const Text('评价'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0XFF00ff00),
                  alignment: Alignment.center,
                  child: const Text(
                    '待付款',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  color: const Color(0XFFF5F5F5),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('show'),
                  ),
                ),
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
