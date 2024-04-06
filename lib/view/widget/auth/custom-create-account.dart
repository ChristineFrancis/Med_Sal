import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/login-controller.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomCreateAccount extends StatelessWidget {
  const CustomCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
     LoginControllerImp controllerImp =Get.put(LoginControllerImp());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don’t have an account? " , 
        style:TextStyle(fontWeight: FontWeight.w400 , fontSize: 22)), 
        InkWell(
          onTap: () {
            controllerImp.goToRegister();
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColor.primaryDarkColor , width: 2))),
              child: Text("Creat it" , 
          style:TextStyle(fontWeight: FontWeight.w400 , fontSize: 22 , color: AppColor.primaryDarkColor)),),
        )
      ],
    );
  }
}