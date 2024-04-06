import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
class CustomPersonalInfo extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String info;
  const CustomPersonalInfo({super.key,required this.icon, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;

    return  Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Row(
            children: [
              Icon(icon , color: 
               isDarkMode?AppColor.whiteColor: AppColor.searchColor,),
              const SizedBox(width: 20,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SizedBox(height: 20,),
                 Text(title , style: Theme.of(context).textTheme.displayLarge!.copyWith(color: isDarkMode?AppColor.whiteColor: AppColor.searchColor)),
                 const SizedBox(height: 3,),
                 Text(info ,style: Theme.of(context).textTheme.displayLarge!.copyWith(color:isDarkMode?AppColor.whiteColor: AppColor.blackColor)),
                ],),
           ],),
         ); 
  }
}