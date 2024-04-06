import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/services/services.dart';

class SuperMiddleware extends GetMiddleware
{

   MyServices myServices=Get.find();
  @override
  int? get priority =>1;
  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString('role')=='seviceProvider')
    return RouteSettings(name: AppRoute.navBarServiceProvider);
     if(myServices.sharedPreferences.getString('role')=='patient')
    return RouteSettings(name: AppRoute.navbar);
    return null;
  }
}