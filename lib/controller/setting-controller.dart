import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/dark-mode/dark-mode.dart';
import 'package:med_sal/core/localization/change-locale.dart';
import 'package:med_sal/core/services/services.dart';

 abstract class SettingController extends GetxController
{
 goToResetPassword();
 changeLanguage();
 changeTheme();
 logout();
}
class SettingControllerImp extends SettingController
{
  LocaleController localeController=Get.find();
  DarkModeController darkModeController = Get.find();
  MyServices myServices=Get.find();
  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
  
  @override
  changeLanguage() {
    //String? sheredPrefLang=myServices.sharedPreferences.getString('language');
   if(localeController.language== const Locale('ar'))
    {
      localeController.language=const Locale('en');
      localeController.changeLang('en'); 
    
    print(localeController.language);}


   else if (localeController.language==const Locale('en'))  
   {localeController.language=const Locale('ar');
    localeController.changeLang('ar');
    
   print(localeController.language);}
  }

  

  @override
  void onInit() {
    
    super.onInit();
  }
  
  @override
  changeTheme() {
    darkModeController.changeTheme(Get.isDarkMode);
  }
  
  @override
  logout() async{
   // myServices.sharedPreferences.setBool('darkMode', false);
    await myServices.sharedPreferences.remove('language');
    await myServices.sharedPreferences.remove('darkMode');
    await myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.splash);
  }

}