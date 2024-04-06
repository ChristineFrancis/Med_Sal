
import 'package:get/get.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';

abstract class HomeController extends GetxController
{
  goToRegisterPage();
  goToLoginPage();
}
class HomeControllerImp extends HomeController
{
  List  images=
  [
   AppImageAsset.doctorPicHome , 
   AppImageAsset.doctorPicHome,
   AppImageAsset.doctorPicHome,
  ];
  
  @override
  goToLoginPage() {
    Get.toNamed(AppRoute.loginPage);
  }
  
  @override
  goToRegisterPage() {
    Get.toNamed(AppRoute.registerPage);
  }
}