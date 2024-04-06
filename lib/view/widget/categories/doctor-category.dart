import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomDoctorCategory extends StatelessWidget {
  final String name;
  final String image;
  final  Function() onTap;
  const CustomDoctorCategory({super.key, required this.name, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return  InkWell(
      onTap: onTap,
      child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                  height: 85,
                  decoration: BoxDecoration(
                   // color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.primaryLightColor , width: 1),
                    boxShadow:  [
                         BoxShadow( 
                          color:isDarkMode?AppColor.darkModeColor:  AppColor.cardColor,
                          offset: const Offset(0, 2), 
                         // blurRadius: 9, 
                          //spreadRadius:-2, 
                              ),],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text(name,
                    style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w400 , color:isDarkMode? AppColor.whiteColor :AppColor.blackColor  ),),
                    Image.asset(image).animate().scaleX(duration: 1300.ms),
                    ],),),
    );
  }
}