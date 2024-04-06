import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/view/screen/categories/categories.dart';
import 'package:med_sal/view/screen/home-page.dart';
import 'package:med_sal/view/screen/patient/myprofile.dart';
import 'package:med_sal/view/screen/setting.dart';

 abstract class NavBarController extends GetxController
 {
  changeTabIndex(int index);
 }
  class NavBarControllerImp extends NavBarController
  {
    int currentIndex = 0;
    List <Widget> screens=
    [
      const HomePage(),
      const MyProfile(),
      const CategoriesPage(),
     Container(),
     SettingPage(),


    ];
     void changeTabIndex(int index) {
    currentIndex = index;
    update();}

  }
