import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/register-controller.dart';
import 'package:med_sal/view/widget/appbarPages.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/auth/custom-serviceprovider.dart';
import 'package:med_sal/view/widget/auth/text-form-field.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterControllerImp controllerImp =Get.put(RegisterControllerImp());
   RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
   body:CustomScrollView(
         slivers: [
          SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
            children: [
             const Expanded(flex: 1,
              child: CustomAppBarPages(textappBar: 'Register As Patient',)),
             const CustomTextFormFieldAuth(hintTextAuth: 'yourname @mail.com', labelTextAuth: 'Email', suffixIconAuth: Icons.mail_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'At least 8 characters', labelTextAuth: 'Password', suffixIconAuth: Icons.visibility_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'Confirm Password', labelTextAuth: 'Confirm Password', suffixIconAuth: Icons.visibility_off_outlined,),
             Padding(
              padding: const EdgeInsets.symmetric(vertical:30 ),
              child: CustomButtonAuth(text: 'Registar', height: 50, width: 350, onTap: () {controllerImp.goToCheckEmail(); },),
                 ),
              const Expanded(flex: 2,
                child: CustomServiceProvider()),
                 ],),
             ),
           ], ),
          );
  }
}