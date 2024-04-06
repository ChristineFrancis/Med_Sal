import 'package:get/get.dart';
import 'package:med_sal/core/constant/routes.dart';

abstract class CategoriesController extends GetxController{
  
  goToPage( int index , String titleDetails,
  final String imageCategories,
  final String image1DetailsServices,
  final String image2DetailsServices,
  final String image3DetailsServices,
  final String image4DetailsServices,
  final String image1DetailsProducts,
  final String image2DetailsProducts,
  final String image3DetailsProducts,
  final String image4DetailsProducts);
}

class CategoriesControllerImp extends CategoriesController{
    int currentIndex=0;
    
  @override
  void onInit() {
    super.onInit();
  }
  
  @override
  goToPage(int index, String titleDetails,
   String imageCategories, String image1DetailsServices,
   String image2DetailsServices, String image3DetailsServices,
   String image4DetailsServices, String image1DetailsProducts,
   String image2DetailsProducts, String image3DetailsProducts, 
   String image4DetailsProducts) 
      {
    if (index==0){Get.toNamed(AppRoute.doctorsCategory);}
        else{
       Get.toNamed(AppRoute.detailsPage ,
       arguments:{
          'titleDetails':titleDetails ,
          'image1DetailsServices': image1DetailsServices,
          'image2DetailsServices': image2DetailsServices,
          'image3DetailsServices': image3DetailsServices,
          'image4DetailsServices': image4DetailsServices,
          'image1DetailsProducts': image1DetailsProducts,
          'image2DetailsProducts': image2DetailsProducts,
          'image3DetailsProducts': image3DetailsProducts,
          'image4DetailsProducts': image1DetailsProducts,
       } );}
  }
}