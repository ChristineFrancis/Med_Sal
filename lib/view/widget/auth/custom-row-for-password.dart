import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomRowForPassword extends StatelessWidget {
  const CustomRowForPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right:5),
                width: 20,
                height: 20,
                decoration:BoxDecoration(
                  border: Border.all(color: AppColor.primaryLightColor, width: 1)
                ) ,),
              Text('Remember me' ,
             style: TextStyle(color: AppColor.primaryLightColor , fontSize: 20 ),),
            ],
          ),
          Text('Forgot Password?' ,
             style: TextStyle(color: AppColor.primaryLightColor , fontSize: 20),),
          
        ],
      ),
    );
  }
}