import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focus_detector/focus_detector.dart';

class SuperScaffold extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool xBotSafe;
  const SuperScaffold(
      {Key? key,
      required this.color,
      required this.child,
      this.xBotSafe = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
      onFocusGained: () {
        setBarColor(color);
        if (Platform.isIOS) {
          color.computeLuminance() > 0.179
              ? setBarBrightnessDark()
              : setBarBrightnessLight();
        }
      },
      onVisibilityGained: () {
        setBarColor(color);
        if (Platform.isIOS) {
          color.computeLuminance() > 0.179
              ? setBarBrightnessDark()
              : setBarBrightnessLight();
        }
      },
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: Container(
          color: color,
          child: SafeArea(
            top: true,
            left: false,
            right: false,
            bottom: xBotSafe,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

void setBarBrightnessLight() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
}

void setBarBrightnessDark() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
}

void setBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color));
}
