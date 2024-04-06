import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color? color;
  final Function()? onTap;
  const CustomButtonAuth({super.key, required this.height, required this.width, required this.text, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color ?? AppColor.primaryLightColor,
              // AppColor.primaryLightColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(text , 
              style: TextStyle(color: AppColor.whiteColor , fontSize: 20 , fontWeight: FontWeight.w400),),
            ),
          ),
        );
  }
}