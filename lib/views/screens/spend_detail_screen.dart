import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoniee/controllers/spend_controller.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/values.dart';

class SpendScreenDetailScreen extends StatelessWidget {
  final String image;
  final Color color;
  const SpendScreenDetailScreen(
      {super.key, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: const Color(0xffF6F6F6),
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: color.withOpacity(0.24),
                  ),
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(5, 0),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SvgPicture.asset(
                  "assets/images/spend.svg",
                  width: 90.w,
                ),
                Transform.translate(
                  offset: const Offset(0, 35),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35.0, vertical: 35),
                    child: GetBuilder<SpendController>(builder: (controller) {
                      return buildSpendWidget(controller);
                    }),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildSpendWidget(SpendController controller) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MyMoniee",
                style: TextStyle(
                  color: color1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.check_circle,
                color: color1,
                size: 18,
              ),
              Transform.translate(
                offset: Offset(20.w, 0),
                child: CircleAvatar(
                  backgroundColor: color.withOpacity(0.24),
                  radius: 13,
                  child: SvgPicture.asset(image),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                "Total Spend",
                style: TextStyle(
                  color: Color(0xffFF3F3F),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SvgPicture.asset('assets/images/arrow_down.svg'),
              const Spacer(),
              SvgPicture.asset(
                'assets/images/money.svg',
              ),
              const SizedBox(width: 6),
              Text(
                  "${controller.txtSpendController.text.isEmpty ? 0 : controller.txtSpendController.text} ks"),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "Add your amount",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: const Color(0xff000000).withOpacity(0.2),
            ),
          ),
          const SizedBox(height: 10),
          buildTextControllerWidget(controller),
          const SizedBox(height: 15),
          buttonWidget(),
        ],
      ),
    );
  }

  Widget buildTextControllerWidget(SpendController controller) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller.txtSpendController,
        onChanged: (value) {
          controller.addSpendAmount(value);
        },
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: const Color(0xff000000).withOpacity(0.2),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonWidget() {
    return SizedBox(
      width: 100.w,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.red),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        child: const Text("Spend"),
      ),
    );
  }
}
