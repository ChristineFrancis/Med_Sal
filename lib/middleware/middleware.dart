import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/services/services.dart';

class MyMiddleware extends GetMiddleware
{
   MyServices myServices=Get.find();
  @override
  int? get priority =>2;
  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getBool('splash')==true)
    return RouteSettings(name: AppRoute.navbar);
    return null;
  }
}