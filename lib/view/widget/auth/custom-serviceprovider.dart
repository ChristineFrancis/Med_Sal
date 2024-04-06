import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';

class CustomServiceProvider extends StatelessWidget {
  const CustomServiceProvider({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: Get.size.width,
      //color: AppColor.backgroundAppbarColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Are you a service provider' ,
           style: TextStyle(color: AppColor.primaryDarkColor , fontSize: 22),),
          Column(
            children: [
         CustomButtonAuth(height: 70, width: 150, text: 'Join Now' , onTap: () { Get.toNamed(AppRoute.registerServiceprovider);},),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 100,
            height: 8,
            color: AppColor.primaryLightColor
          )
            ], ),
        ],),
    );
  }
}