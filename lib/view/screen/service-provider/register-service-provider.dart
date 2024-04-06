import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/register-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/view/widget/appbarPages.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/auth/text-form-field.dart';
// ignore: must_be_immutable
class RegisterSrviceProviderPage extends StatelessWidget {
  RegisterControllerImp controllerImp =Get.put(RegisterControllerImp());
   RegisterSrviceProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
   body:
            ListView(
            children: [
             CustomAppBarPages(textappBar: 'Register as a service provider',),
             SizedBox(height: 25,),
             //CustomExpanded(flex: 1),
             const CustomTextFormFieldAuth(hintTextAuth: 'yourname @mail.com', labelTextAuth: 'Email', suffixIconAuth: Icons.mail_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'At least 8 characters', labelTextAuth: 'Password', suffixIconAuth: Icons.visibility_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'At least 8 characters', labelTextAuth: 'Confirm Password', suffixIconAuth: Icons.visibility_off_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: '123456789', labelTextAuth: 'Contact number', suffixIconAuth: Icons.call_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'yourname @mail.com', labelTextAuth: 'Busines name', suffixIconAuth: Icons.card_membership_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'Enter service', labelTextAuth: 'Service Type', suffixIconAuth: Icons.edit_outlined,),
             const CustomTextFormFieldAuth(hintTextAuth: 'Pleas enter data in fields', labelTextAuth: 'Bank data', suffixIconAuth: Icons.arrow_drop_down,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
               child: Text('Please Upload a file which contain information about you, and you services',
               style:const TextStyle(fontWeight: FontWeight.w400 , fontSize: 18)),
             ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:25 , horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle:  TextStyle(fontSize: 15 , color: AppColor.searchColor , fontWeight: FontWeight.w400),
                  hintText: 'Upload file',
                  floatingLabelBehavior:FloatingLabelBehavior.always ,
                  contentPadding:const EdgeInsets.symmetric( horizontal: 30 , vertical: 20) ,
                  suffixIcon: Icon(Icons.upload , color:AppColor.searchColor ,),
                   border: OutlineInputBorder( borderRadius: BorderRadius.circular(10))),),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical:60 , horizontal: 20),
              child: CustomButtonAuth(text: 'Sign up', height: 50, width: 350, onTap: () {controllerImp.goToCheckEmail(); },),
                 ),
                 ],),
          );
  }
}