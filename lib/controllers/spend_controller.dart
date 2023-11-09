import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mymoniee/models/spend.dart';

import '../views/utils/values.dart';

class SpendController extends GetxController {
  List<Spend> spendList = [
    Spend(
        id: '1', title: 'Food', image: 'assets/images/food.svg', color: color2),
    Spend(
        id: '2',
        title: 'Taxi',
        image: 'assets/images/taxi.svg',
        color: const Color(0xff0D7DE3)),
    Spend(
        id: '3',
        title: 'Shopping',
        image: 'assets/images/shopping.svg',
        color: color1),
    Spend(
        id: '4',
        title: 'Bill',
        image: 'assets/images/bill.svg',
        color: const Color(0xffBAB300)),
    Spend(
        id: '5',
        title: 'Education',
        image: 'assets/images/education.svg',
        color: const Color(0xff01A6BC)),
    Spend(
        id: '6',
        title: 'Health',
        image: 'assets/images/health.svg',
        color: const Color(0xffFF2768)),
    Spend(
        id: '7',
        title: 'Home',
        image: 'assets/images/home.svg',
        color: const Color(0xffCF5B07)),
    Spend(
        id: '8',
        title: 'Other',
        image: 'assets/images/plus.svg',
        color: const Color(0xffA4A4A4)),
  ];
}
