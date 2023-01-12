import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoniee/views/utils/global.dart';
import 'package:mymoniee/views/utils/values.dart';
import '../utils/super_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Scaffold(
          body: Column(
        children: [
          topAppBarWidget(),
          Expanded(child: buildIncomeWidget()),
        ],
      )),
    );
  }

  Widget topAppBarWidget() {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.08,
        right: Get.width * 0.08,
        top: 10,
        bottom: 8,
      ),
      child: Row(
        children: [
          Text(
            "MyMoniee",
            style: TextStyle(color: color1, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.check_circle,
            color: color1,
            size: 17,
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ],
      ),
    );
  }

  Widget buildIncomeWidget() {
    return ListView(
      children: [
        buildCardWidget(),
        buildEarnSpendWidget(),
        buildTodayListWidget(),
      ],
    );
  }

  Widget buildCardWidget() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(Get.width * 0.08, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.5,
                    offset: Offset(15, 15),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/card.jpg',
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.15, Get.height * 0.025),
            child: Text(
              'Balance',
              style: TextStyle(color: Colors.white.withOpacity(0.4)),
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.15, Get.height * 0.047),
            child: const Text(
              '5500000 MMk',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.15, Get.height * 0.15),
            child: Row(
              children: [
                Text(
                  'Income',
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                ),
                Icon(
                  Icons.arrow_drop_up,
                  color: color2,
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.15, Get.height * 0.18),
            child: const Text(
              '200000 MMk',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.6, Get.height * 0.15),
            child: Row(
              children: [
                Text(
                  'Outcome',
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(Get.width * 0.6, Get.height * 0.18),
            child: const Text(
              '200000 MMk',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEarnSpendWidget() {
    return Container(
      padding: EdgeInsets.only(
          left: Get.width * 0.08, right: Get.width * 0.08, top: 20),
      child: Row(
        children: [
          Container(
            width: Get.width * 0.4,
            height: Get.height * 0.18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: color2.withOpacity(0.2),
                  child: Image.asset('assets/images/earn.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Earn',
                  style: TextStyle(
                    color: color2,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: Get.width * 0.4,
            height: Get.height * 0.19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: color3.withOpacity(0.2),
                  child: Image.asset('assets/images/spend.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Spend',
                  style: TextStyle(
                    color: color3,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTodayListWidget() {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.08,
        right: Get.width * 0.08,
        top: Get.width * 0.05,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Today List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: color1.withOpacity(0.1),
                child: Image.asset('assets/images/clock.png'),
              )
            ],
          ),
          Container(
            width: Get.width * 0.2,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: Colors.grey.withOpacity(0.15),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Row(
              children: [
                Image.asset('assets/images/income.png'),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Income',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '10:40 am 21 jun 2023',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    const Text(
                      '\$25.5',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/arrow_up.png'),
                        Text(
                          'Earn',
                          style: TextStyle(fontSize: 12, color: color2),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
