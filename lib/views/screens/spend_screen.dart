import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mymoniee/controllers/spend_controller.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';
import 'package:mymoniee/views/utils/values.dart';

class SpendScreen extends StatelessWidget {
  const SpendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          child: buildSpendWidget(),
        ),
      ),
    );
  }

  Widget buildSpendWidget() {
    return GetBuilder<SpendController>(
      builder: (controller) {
        return GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10,
          ),
          children: controller.spendList.map(
            (e) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.width * 0.06,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: e.id == '1'
                            ? color2.withOpacity(0.2)
                            : e.id == '2'
                                ? Colors.blue.withOpacity(0.2)
                                : e.id == '3'
                                    ? color1.withOpacity(0.2)
                                    : e.id == '4'
                                        ? Colors.amber.withOpacity(0.2)
                                        : e.id == '5'
                                            ? Colors.cyan.withOpacity(0.2)
                                            : e.id == '6'
                                                ? color3.withOpacity(0.2)
                                                : Colors.red,
                        child: Image.asset(e.image),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(e.title),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
