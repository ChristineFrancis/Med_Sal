import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomSubtitleCategories extends StatelessWidget {
  final String text;
  const CustomSubtitleCategories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return Container(
          margin: const EdgeInsets.only(left: 10  , bottom: 20),
           height: 60,
          // width: Get.size.width/3,
           width: 180,
          decoration: BoxDecoration(
                     // color: AppColor.whiteColor,
                      borderRadius:  const BorderRadius.only(
                       bottomLeft:Radius.circular(50) ,
                       topRight: Radius.circular(50) ),
                       border: Border.all(color: AppColor.primaryDarkColor , width: 3)),
          child:   Center(child: Text(text , style:  TextStyle( fontSize: 25  , fontWeight: FontWeight.w500 , color:isDarkMode? AppColor.whiteColor :AppColor.blackColor ),)),
        );
  }
}