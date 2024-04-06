import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';

class CustomAviableDoctors extends StatelessWidget {
  const CustomAviableDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark=Get.isDarkMode;
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
     margin: const EdgeInsets.only(top: 300 , bottom: 40 , left: 15 , right: 15),
              //  width: 360,
              //  height: 450,
    decoration: BoxDecoration(
      color: isDark? AppColor.darkModeColor: AppColor.whiteColor,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: AppColor.primaryLightColor , width: 2),),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text('Available Doctors', 
                  style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500 , color:isDark? AppColor.whiteColor :AppColor.blackColor ),),
              Text('see all', 
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300 , color:isDark? AppColor.whiteColor :AppColor.blackColor ),),
                        ],),
        SizedBox(height: 20,),
        CustomInfoAviableDoctors(),
        CustomInfoAviableDoctors(),
        CustomInfoAviableDoctors(),
        SizedBox(height: 10,),
                    ],),
                );
  }
}
class CustomInfoAviableDoctors extends StatelessWidget {
 
  const CustomInfoAviableDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark=Get.isDarkMode;
    return Container(
     height: 80,
     margin: EdgeInsets.symmetric(vertical: 10),
     decoration: BoxDecoration(
      border: Border.all(color: AppColor.searchColor , width: 1),
      borderRadius: BorderRadius.circular(12),
     // color: Theme.of(context).colorScheme.secondaryContainer
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Image.asset(AppImageAsset.dcLanaImage),
        Column(
          children: [
            Text('Dr. Lana', 
             style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color:isDark? AppColor.whiteColor :AppColor.blackColor ),),
             Text('Dentist', 
             style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300 , color:AppColor.searchColor ),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:10),
          child: CustomButtonAuth(height:35, width: 80,text: 'Book',color:AppColor.primaryDarkColor,onTap: (){Get.toNamed(AppRoute.appointment);},),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:35),
          child: Icon(Icons.more_vert),
        ),
                  
         ],),
        );
  }
}