import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomAppbarWithLeading extends StatelessWidget {
  final String appbarText;
  final void Function() onPressed;
  final IconData icon;

  const CustomAppbarWithLeading({super.key, required this.appbarText,required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    
    return AppBar(title: Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Text(appbarText, 
                 style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
    ),
                       centerTitle: true,
                       backgroundColor:  AppColor.backgroundAppbarColor,
                       leading:Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: IconButton(onPressed: onPressed, icon:Icon(icon , size:25,)),
                       ), );
  }
}