import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomTitleServiceBooking extends StatelessWidget {
  const CustomTitleServiceBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Services' , 
        style:TextStyle(fontWeight: FontWeight.w500 , fontSize: 35 , color: AppColor.primaryDarkColor)),
        Container(
          margin: const EdgeInsets.only(bottom: 22 , top: 4),
          height: 8,
          width: 150,
          decoration: BoxDecoration(
            color: AppColor.primaryLightColor,
            boxShadow:  [
                   BoxShadow( 
                    color:AppColor.searchColor,
                    offset: const Offset(0, 5), 
                    blurRadius: 4, 
                    spreadRadius:2, 
                        ),],
            ),
        )
      ],
    );
  }
}