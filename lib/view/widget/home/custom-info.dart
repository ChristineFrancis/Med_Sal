import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';

class IntroProHome extends StatelessWidget {
  const IntroProHome({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      children: [
                        Image.asset(AppImageAsset.logoHome),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Welcome to ' , style: TextStyle( fontSize: 25  , fontWeight: FontWeight.w500 , color:isDarkMode?AppColor.whiteColor: AppColor.blackColor),),
                           Text('MED-SAL' ,style: TextStyle( fontSize: 35 ,fontWeight: FontWeight.w500, color: AppColor.primaryDarkColor ),),
                                    ], ),
                                ], ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Image.asset(AppImageAsset.nurseHome),
                           ),
                             ]) ;
                                 }}