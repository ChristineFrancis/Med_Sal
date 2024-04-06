import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/verify-code-controller.dart';
import 'package:med_sal/core/constant/color.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final VerifyCodeControllerImp controllerImp=Get.put(VerifyCodeControllerImp());
     final bool isDark=Get.isDarkMode;
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        OtpTextField(
          focusedBorderColor: AppColor.primaryLightColor ,
          borderRadius: BorderRadius.circular(80),
          numberOfFields: 5,
          borderColor: AppColor.primaryLightColor,
          showFieldAsBox: true, 
          onCodeChanged: (String code) {
          },
          onSubmit: (String verificationCode){
            controllerImp.goToNavPage();
            //Get.toNamed(AppRoute.navbar);
            //controllerImp.verifyCode=verificationCode;
            print('verificationCode $verificationCode');
          
              showDialog(
                  context: context,
                  builder: (context){
                  return AlertDialog(
                    backgroundColor:isDark? AppColor.darkModeColor :AppColor.whiteColor,
                      title: Text('Verification Code' , style: TextStyle(color:isDark? AppColor.whiteColor :AppColor.blackColor),),
                      content: Text('Code entered is $verificationCode'),
                  );
                  }
              );
          }, // end onSubmit
        ),
       
      ],),
    );
  }
}