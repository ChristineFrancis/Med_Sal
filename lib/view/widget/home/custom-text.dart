import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return Text(text ,
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color:  isDarkMode? AppColor.whiteColor : AppColor.blackColor));
  }
}