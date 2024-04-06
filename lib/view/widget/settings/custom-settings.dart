import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomSetting extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;
  const CustomSetting({super.key, required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
     final isDarkMode = Get.isDarkMode;
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 70,
        padding:const EdgeInsets.symmetric(horizontal: 10 ),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color:isDarkMode?AppColor.primaryLightColor: AppColor.searchColor),
          borderRadius: BorderRadius.circular(10),
          color:isDarkMode?AppColor.darkModeColor: AppColor.settingColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text ,
               style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25 ,color: isDarkMode? AppColor.whiteColor:AppColor.blackColor ),),
               Icon(icon),
            ],),
      ),
    );
  }
}