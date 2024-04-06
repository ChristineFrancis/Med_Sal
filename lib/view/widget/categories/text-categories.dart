import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/view/widget/categories/circle.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class CustomTextCategories extends StatelessWidget {
  const CustomTextCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: Get.size.width,
      child: Column(
        children: [
         Text(
            'Lorem ipsum dolor sit amet consectetur. \nLectus lacus phasellus enim vitae id integer \ntincidunt. Tincidunt suspendisse aliquam ' , 
            style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w300 , color: AppColor.primaryLightColor),
          ),
         SizedBox(
          width: Get.size.width,
           child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             SizedBox(
              width: Get.size.width/2.5,
               child: Column(
                 children: [
                   Text('pretium ut dapibus mus ut et.' , 
                         style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w300 , color: AppColor.primaryLightColor),
                       ),
                 ],
               ),
             ),
            const CustomExpanded(flex: 3),
             const CustomCircle(),
             const CustomExpanded(flex: 1),
                 ],),
         )
        ],),
    );
  }
}
