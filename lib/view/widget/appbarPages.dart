import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomAppBarPages extends StatelessWidget {
  final String textappBar;
  const CustomAppBarPages({super.key, required this.textappBar});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return  SafeArea(
      child: Container(
              color:isDarkMode?AppColor.darkModeColor:  AppColor.backgroundAppbarColor,
              child: Center(
                child: Text(textappBar , 
                         style:  TextStyle(fontSize: 30 , fontWeight: FontWeight.w500 , color:isDarkMode? AppColor.whiteColor :AppColor.blackColor ),
                         textAlign: TextAlign.center,),
              ),),
    );
  }
}