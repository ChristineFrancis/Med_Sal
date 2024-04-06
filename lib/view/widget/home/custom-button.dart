import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomButtonHome extends StatelessWidget {
  final String textButton;
  final Function() onTap;
  const CustomButtonHome({super.key, required this.textButton, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
                child: Container(
                height: 50,
                width: 115,
                decoration: BoxDecoration(
                  color: AppColor.primaryDarkColor,
                  borderRadius:  const BorderRadius.only(bottomLeft:Radius.circular(30) ,
                   topRight: Radius.circular(30) )),
                   child: Center(child: Text(textButton , 
                   style: TextStyle(color:AppColor.whiteColor , fontWeight: FontWeight.w400 , fontSize: 20),),),),
              );
  }
}