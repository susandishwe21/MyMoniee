import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoniee/views/utils/values.dart';

double paddingTopHeight() {
  return MediaQuery.of(Get.context!).padding.top;
}

double paddingBotHeight() {
  return MediaQuery.of(Get.context!).padding.bottom;
}

Widget topPadding(BuildContext context, {Color color = Colors.white}) {
  return Container(
    color: color,
    height: MediaQuery.of(context).viewPadding.top,
  );
}

Widget botPadding(BuildContext context, {Color color = Colors.white}) {
  return Container(
    color: color,
    height: MediaQuery.of(context).viewPadding.bottom,
  );
}

void setScreenSize() {
  screenWidth = Get.width;
  screenHeight = Get.height;
}
