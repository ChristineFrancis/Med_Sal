import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return Padding(
      padding: const EdgeInsets.only(top:22),
      child: Divider(
              color: isDarkMode?AppColor.whiteColor: AppColor.searchColor,
              indent: 20,
              endIndent: 20,
              thickness: 1,).animate().fade(begin: .0 , end: 2 ,delay:500.ms).slide(duration: 500.ms),
    );
  }
}