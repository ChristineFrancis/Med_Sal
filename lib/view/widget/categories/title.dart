import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomTitleCategories extends StatelessWidget {
  final String titleText;
  const CustomTitleCategories({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
     final isDarkMode = Get.isDarkMode;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40 , vertical: 20),
      width: 130,
      height: 80,
      decoration: BoxDecoration(
        color: isDarkMode?AppColor.darkModeColor:AppColor.titleCategoryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.primaryDarkColor,
            offset: const Offset(-7, -4), // Offset of the shadow
           // blurRadius: 4, // Blur radius
           // spreadRadius: 0, // Spread radius
          ),
          const BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 4), // Offset of the bottom-right shadow
            blurRadius: 4, // Blur radius
            spreadRadius: 0, // Spread radius
          ),
                   
          ],
      ),
      child: Center(
        child: Text(titleText,
                 style: TextStyle(color: AppColor.primaryDarkColor , fontWeight: FontWeight.bold , fontSize: 30),),
      ),
    );
  }
}