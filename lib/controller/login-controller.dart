import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/services/services.dart';

abstract class LoginController extends GetxController
{
 goToRegister();
}
class LoginControllerImp extends LoginController
{
  MyServices myServices=Get.find();
  String? preRoute;
  @override
  goToRegister() {
    Get.toNamed(AppRoute.registerPage );
  }
  @override
  void onInit() {
    preRoute=Get.previousRoute;
    if(preRoute==AppRoute.registerPage)
    {myServices.sharedPreferences.setString('role', 'patient');}
    else if(preRoute==AppRoute.registerServiceprovider)
    {myServices.sharedPreferences.setString('role', 'seviceProvider');}

    print(preRoute);
    super.onInit();
  }

}