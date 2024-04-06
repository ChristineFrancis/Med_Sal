import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text('Med-Sal' , 
    style: TextStyle
    (
      color: AppColor.greenLightColor ,
       fontFamily: 'KronaOne' ,
        fontSize: 40 ,
         fontWeight: FontWeight.bold
    ),).animate().scale(delay: 500.ms , duration: 1200.ms ,).then( delay: 1200.ms).shimmer(angle: 45 , duration: 1200.ms);
  }
}