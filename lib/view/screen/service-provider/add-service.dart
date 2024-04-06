import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/auth/text-form-field.dart';

class ADDService extends StatelessWidget {
  const ADDService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(
              title:  const Text('ADD Service' , 
             style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
            centerTitle: true,
                         //backgroundColor:  AppColor.backgroundAppbarColor,
            expandedHeight: 70,
            leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];},
         body:ListView(children: [
         // SizedBox(height: 20,),
          const CustomTextFormFieldAuth(hintTextAuth: 'Pleas Enter Name of Service', labelTextAuth: 'Enter Name of Service', suffixIconAuth: Icons.edit_outlined,),
          //SizedBox(height: 20,),
          const CustomTextFormFieldAuth(hintTextAuth: 'Pleas Enter Name of Category', labelTextAuth: 'Enter Name of Category', suffixIconAuth: Icons.edit_outlined,),
          //SizedBox(height: 20,),
          const CustomTextFormFieldAuth(hintTextAuth: 'Pleas Enter Cost', labelTextAuth: 'Enter Cost', suffixIconAuth: Icons.edit_outlined,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Have a Discount?', style:const TextStyle(fontWeight: FontWeight.w500 , fontSize: 22),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: Row(children: [
              Container(
                height: 60 , width: 60,
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(70), 
                color: AppColor.primaryDarkColor) ,
                child: Center(child:Text('Yes' , style: TextStyle(color: AppColor.whiteColor , fontSize: 20),)),),
                 Container(
                  margin: EdgeInsets.only(left: 20),
                height: 60 , width: 60,
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(70), 
                color: AppColor.searchColor) ,
                child: Center(child:Text('No' , style: TextStyle(color: AppColor.blackColor, fontSize: 20),)),),
            ],),
              ),
          const CustomTextFormFieldAuth(hintTextAuth: 'Pleas Enter Discount %', labelTextAuth: 'Enter Discount', suffixIconAuth: Icons.edit_outlined,),
           const CustomTextFormFieldAuth(hintTextAuth: 'Total Cost', labelTextAuth: 'Total Cost', suffixIconAuth: Icons.edit_outlined,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
             child: CustomButtonAuth(height: 50, width: double.infinity, text: 'Confirm' ,  color: AppColor.primaryDarkColor),
           ),
         ],),
         
      ),
    );
  }
}