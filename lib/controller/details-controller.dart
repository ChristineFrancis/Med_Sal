
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/core/constant/routes.dart';

abstract class DetailsController extends GetxController
{
  goToProductsBooking();
  goToServicesBooking();

}
class DetailsControllerImp extends DetailsController
{
   String? titleDetails;
   String? image1DetailsServices;
   String? image2DetailsServices;
   String? image3DetailsServices;
   String? image4DetailsServices;
   String? image1DetailsProducts;
   String? image2DetailsProducts;
   String? image3DetailsProducts;
   String? image4DetailsProducts;
   
   @override
  void onInit() {
    titleDetails=Get.arguments['titleDetails'];
    image1DetailsServices=Get.arguments['image1DetailsServices'];
    image2DetailsServices=Get.arguments['image2DetailsServices'];
    image3DetailsServices=Get.arguments['image3DetailsServices'];
    image4DetailsServices=Get.arguments['image4DetailsServices'];
    image1DetailsProducts=Get.arguments['image1DetailsProducts'];
    image2DetailsProducts=Get.arguments['image2DetailsProducts'];
    image3DetailsProducts=Get.arguments['image3DetailsProducts'];
    image4DetailsProducts=Get.arguments['image4DetailsProducts'];
    // TODO: implement onInit
    super.onInit();
  }
  
  @override
  goToProductsBooking() {
    Get.toNamed(AppRoute.productsBooking);
  }
  
  @override
  goToServicesBooking() {
   Get.toNamed(AppRoute.sevicesBooking);
  }
  
}
