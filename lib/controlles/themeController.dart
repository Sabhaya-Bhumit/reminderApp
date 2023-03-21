import 'package:flutter/material.dart';
import 'package:get/get.dart';

class themeController extends GetxController {
  bool dark = false;

  themeChange(bool val) {
    Get.changeTheme(Get.isDarkMode
        ? ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.red,
            primary: Colors.red,
          ))
        : ThemeData.dark());
    dark = val;
    update();
  }
}
