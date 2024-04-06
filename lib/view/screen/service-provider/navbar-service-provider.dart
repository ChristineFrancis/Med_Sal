import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/controller/navbar-service-controller.dart';
import 'package:med_sal/core/constant/functions/alertexit.dart';

class NavBarServiceProvider extends StatelessWidget {
  
  const NavBarServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarServiceProviderControllerImp());
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: alertExit,
      child: GetBuilder<NavBarServiceProviderControllerImp>(builder: (controller) => 
       Scaffold(
        bottomNavigationBar: 
        BottomNavigationBar
        (
          items:
         const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined) ,  label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline) ,  label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined) , label: ''),
         ],
      
         onTap: (value) 
         {
          controller.changeTabIndex(value);
         },
         currentIndex: controller.currentIndex,
         ),
        body: controller.screens[controller.currentIndex],
         
      )),
    );
  }
}