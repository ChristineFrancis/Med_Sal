import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/setting-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';
import 'package:med_sal/view/widget/settings/custom-settings.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(SettingControllerImp());
    return  Scaffold(
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Setting' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.settings_outlined)))
                         ];}, 


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:GetBuilder<SettingControllerImp>(builder: (controller) => 
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          Padding(
            padding: const EdgeInsets.only(top:25,bottom: 10),
            child: Text('Account' ,
            style: TextStyle(
              fontSize: 30 ,
              fontWeight: FontWeight.w500,
               color: AppColor.primaryLightColor ),),
          ),
           CustomSetting(text: '1'.tr, icon: Icons.edit_outlined,),
           CustomSetting(text: '2'.tr, icon: Icons.sync_lock,onTap:(){controller.goToResetPassword();},),
           CustomSetting(text: '3'.tr, icon: Icons.not_listed_location_outlined,),
           CustomSetting(text: '4'.tr, icon: Icons.nightlight_outlined, onTap: () {controller.changeTheme();},),
           CustomSetting(text: '12'.tr, icon: Icons.language_outlined,onTap:(){controller.changeLanguage();} ),
          MaterialButton(onPressed: (){controller.logout();},
          child: Container(
           // padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color:AppColor.primaryDarkColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                children: [
                  CustomExpanded(flex: 4),
                  Text('11'.tr , 
                  style: TextStyle(color: AppColor.whiteColor , fontSize: 20 , fontWeight: FontWeight.w400),),
                   CustomExpanded(flex: 1),
                  Icon(Icons.logout_outlined , color: AppColor.whiteColor,),
                   CustomExpanded(flex: 4),
                ],),
            ),
          ),)
        ],),),
      ),
    ));
  }
}