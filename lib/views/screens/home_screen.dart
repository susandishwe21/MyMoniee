import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mymoniee/views/utils/super_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      color: Colors.white,
      child: Scaffold(
        body: Container(),
      ),
    );
  }

  Widget buildIncomeWidget() {
    return Container();
  }
}
