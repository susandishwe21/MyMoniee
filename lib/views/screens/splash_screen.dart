import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/values.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(() => const HomeScreen());
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/bg.jpg',
              ),
              Transform.translate(
                offset: Offset(-Get.width * 0.11, Get.height * 0.65),
                child: Container(
                  height: Get.height * 0.3,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(Get.width * 0.28, Get.height * 0.76),
                child: const Text(
                  "Easy to earn your \n money in only one \n place.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(Get.width * 0.7, Get.height * 0.87),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(Get.width * 0.685, Get.height * 0.865),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: color1,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
