import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only( right: 20),
           height: 30,
           width: 30,
          decoration: BoxDecoration(
          borderRadius:   BorderRadius.circular(30),
          border: Border.all(color: AppColor.primaryDarkColor , width: 3)),
                       ).animate(delay: 700.ms).fade(begin: .1 , end: .9 , delay:400.ms ).slide().then().shake(duration: 600.ms)
;
  }
}