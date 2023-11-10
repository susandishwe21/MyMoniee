import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoniee/controllers/spend_controller.dart';
import 'package:mymoniee/views/screens/spend_detail_screen.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';
import 'package:mymoniee/views/utils/values.dart';
import 'package:svg_flutter/svg.dart';

import '../widgets/appbar_widget.dart';

class SpendScreen extends StatelessWidget {
  const SpendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              AppBarWidget(
                title: 'Spend',
                onPressed: () {
                  Get.back();
                },
                colors: color3,
              ),
              Expanded(
                child: buildSpendWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSpendWidget() {
    return GetBuilder<SpendController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
            ),
            children: controller.spendList.map(
              (e) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => SpendScreenDetailScreen(
                          image: e.image,
                          color: e.color,
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: Get.width * 0.06,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff606060).withOpacity(0.1),
                            offset: const Offset(2, 2),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: e.color.withOpacity(0.24),
                            child: SvgPicture.asset(e.image),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            e.title,
                            style: TextStyle(
                              color: e.color,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
