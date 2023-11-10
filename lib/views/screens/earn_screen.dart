import 'package:flutter/material.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EarnScreen extends StatelessWidget {
  const EarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Scaffold(
        body: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Container(),
        ),
      ),
    );
  }

  Widget earnWidget() {
    return Container();
  }
}
