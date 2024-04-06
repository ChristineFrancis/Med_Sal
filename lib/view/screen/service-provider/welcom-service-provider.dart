import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class WelcomeServiceProvider extends StatelessWidget {
  const WelcomeServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body: Stack(
    children: [
      Container(height: double.infinity,width: double.infinity,
        child: Image.asset(AppImageAsset.welcomeServiceProviderImage , fit: BoxFit.fitWidth,)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomExpanded(flex: 3),
            Text('Welcome' , 
            style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('Lorem ipsum dolor sit amet consectetur. Ac id iaculis tristique proin egestas magna id.' , 
            style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),),
             SizedBox(height: 20,),
             CustomButtonAuth(height: 60, width: double.infinity, text: 'Services' , color: AppColor.primaryDarkColor,onTap: (){Get.toNamed(AppRoute.addService);},),
             SizedBox(height: 20,),
             CustomButtonAuth(height: 60, width: double.infinity, text: 'Products' ,  color: AppColor.primaryDarkColor ,onTap: (){Get.toNamed(AppRoute.addProduct);} ),
             SizedBox(height: 20,),
             CustomButtonAuth(height: 60, width: double.infinity, text: 'Appointment' ,  color: AppColor.primaryDarkColor),
             CustomExpanded(flex: 1),
          ],),
      )
    ],),
    );
  }
}