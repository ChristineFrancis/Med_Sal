import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/view/screen/home-page.dart';
import 'package:med_sal/view/screen/service-provider/category-service-provider.dart';
import 'package:med_sal/view/screen/service-provider/service-provider-profile.dart';
import 'package:med_sal/view/screen/service-provider/welcom-service-provider.dart';
import 'package:med_sal/view/screen/setting.dart';

 abstract class NavBarServiceProviderController extends GetxController
 {
  changeTabIndex(int index);
 }
  class NavBarServiceProviderControllerImp extends NavBarServiceProviderController
  {
    int currentIndex = 0;
    List <Widget> screens=
    [
      const HomePage(),
      const SErviceProviderProfile(),
      WelcomeServiceProvider(),
      CategoriesServiceProviderPage(),
     SettingPage(),


    ];
     void changeTabIndex(int index) {
    currentIndex = index;
    update();}

  }
