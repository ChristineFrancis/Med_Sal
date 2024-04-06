import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:med_sal/controller/splash-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return  Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcom \nTo Our \nMed-Sal' , 
          textAlign:TextAlign.center ,
    style: TextStyle
    (
      color: AppColor.searchColor ,
       fontFamily: 'KronaOne' ,
        fontSize: 45 ,
         fontWeight: FontWeight.bold
    ),).animate().fade(begin: .1 , end: .9 , delay:400.ms ).then().shimmer(),
          Center(child:Lottie.asset('assets/lottie/Animation - 1712183306578.json'),).animate().fade(delay:1000.ms  ).slide(),
         // Lottie.asset('assets/lottie/heartt.json'  ) 
        ],
        //Animation - 1712244664942
      ),
    );
  }
}//Animation - 1712183306578