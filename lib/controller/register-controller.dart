import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/core/constant/routes.dart';

abstract class RegisterController extends GetxController
{
 goToCheckEmail();
}
class RegisterControllerImp extends RegisterController
{
  @override
  goToCheckEmail() {
    Get.toNamed(AppRoute.loginPage);
  }

}