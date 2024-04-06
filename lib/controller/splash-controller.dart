import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/services/services.dart';

class SplashController extends GetxController {
   MyServices myServices=Get.find();


  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4) ,
     (){Get.offNamed(AppRoute.navbar); }
     );
    myServices.sharedPreferences.setBool('splash', true);
    
    super.onInit();
  }

  @override
  void onClose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual ,overlays: SystemUiOverlay.values );
    super.onClose();
  }
}