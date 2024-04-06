import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:med_sal/core/services/services.dart';

class LocaleController extends GetxController{
Locale? language;
MyServices myServices=Get.find();

changeLang(String languageCode )
{
  Locale locale=Locale(languageCode);
  myServices.sharedPreferences.setString('language',languageCode );
  Get.updateLocale(locale);
}

@override
  void onInit() {
    
    String? sheredPrefLang=myServices.sharedPreferences.getString('language');
    if(sheredPrefLang=='ar')
    {language=const Locale('ar');}

    else if(sheredPrefLang=='en')
    {language=const Locale('en');}

    else {language=Locale(Get.deviceLocale!.languageCode);}
    super.onInit();
  }

}