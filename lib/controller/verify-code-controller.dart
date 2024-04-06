import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/services/services.dart';

abstract class VerifyCodeController extends GetxController
{
  goToNavPage();

}
 class VerifyCodeControllerImp extends VerifyCodeController
 {
  MyServices myServices=Get.find();
  @override
  goToNavPage() 
  {print('verrrrrrrrrrrrrrrrify ${myServices.sharedPreferences.getString('role')}');
   // print(myServices.sharedPreferences.getString('role'));
    if(myServices.sharedPreferences.getString('role')=='seviceProvider')
    {Get.offAllNamed(AppRoute.navBarServiceProvider);}
    else 
    {Get.offAllNamed(AppRoute.navbar);}
  }

 }