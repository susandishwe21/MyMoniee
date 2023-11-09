import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';
import 'package:mymoniee/views/utils/values.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color colors;
  const AppBarWidget({
    super.key,
    required this.title,
    required this.onPressed,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Container(
        width: Get.width,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: screenWidth * 0.25,
                color: Colors.transparent,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: color1,
                  size: 20,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "MyMonie",
                  style: TextStyle(
                    color: color1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: color1,
                  size: 18,
                )
              ],
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: color3,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
