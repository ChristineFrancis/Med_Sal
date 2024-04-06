import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';

Future<bool> alertExit()
{
  final isDarkMode = Get.isDarkMode;
  Get.defaultDialog(
    backgroundColor:isDarkMode?AppColor.darkDarkModeColor: AppColor.whiteColor ,
    title: 'Are you want to exit?',
    titleStyle: TextStyle(color:isDarkMode?AppColor.whiteColor: AppColor.blackColor , fontSize: 25 , fontWeight: FontWeight.w500),
    content: Image.asset(AppImageAsset.angryImage),
    confirm: MaterialButton(onPressed: (){exit(0);} , child:  Text('confirm' , style: TextStyle(color:isDarkMode?AppColor.whiteColor: AppColor.blackColor , fontSize: 20 ,),),),
    cancel: MaterialButton(onPressed: (){Get.back();} , child:  Text('cancel' ,style: TextStyle(color:isDarkMode?AppColor.whiteColor: AppColor.blackColor , fontSize: 20,) ),),
  );
  return Future.value(true);
}