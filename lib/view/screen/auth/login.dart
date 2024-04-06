import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/controller/login-controller.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/auth/custom-create-account.dart';
import 'package:med_sal/view/widget/auth/custom-row-for-password.dart';
import 'package:med_sal/view/widget/auth/text-form-field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginControllerImp controllerImp =Get.find();
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Image.asset(AppImageAsset.loginImage , width: Get.size.width,),
                const CustomTextFormFieldAuth(hintTextAuth: 'yourname @mail.com', labelTextAuth: 'Email', suffixIconAuth: Icons.mail_outlined,),
                const CustomTextFormFieldAuth(hintTextAuth: '********', labelTextAuth: 'Password', suffixIconAuth: Icons.visibility_outlined,),
                const CustomRowForPassword(),
                 Padding(
                    padding: EdgeInsets.symmetric(vertical:30 ),
                    child: CustomButtonAuth(text: 'Login', height: 50, width: 350,onTap: (){Get.toNamed(AppRoute.checkEmail);},),
                       ),
                const CustomCreateAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}