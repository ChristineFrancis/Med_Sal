import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          Image.asset(AppImageAsset.checkEmailImage),
          const CustomExpanded(flex: 1),
          Text('Check your email',
          style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w400 , color:AppColor.primaryLightColor  ),),
           const CustomExpanded(flex: 3),
          Text('We just sent a verification \ncode over to\n *********er@gmail' ,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 25) ,
          textAlign: TextAlign.center,),
          const CustomExpanded(flex: 3),
           CustomButtonAuth(text: 'Enter Code', height: 50, width: 350,onTap: (){Get.toNamed(AppRoute.verifyCode);},),
          const CustomExpanded(flex: 5),
      ],),
    );
  }
}