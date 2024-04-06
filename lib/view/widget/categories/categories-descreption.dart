import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/controller/categories-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class CustomCategoriesDescreption extends StatelessWidget {
  final String name;
  final String titleDetails;
  final String imageCategories;
  final String image1DetailsServices;
  final String image2DetailsServices;
  final String image3DetailsServices;
  final String image4DetailsServices;
  final String image1DetailsProducts;
  final String image2DetailsProducts;
  final String image3DetailsProducts;
  final String image4DetailsProducts;
  final int index;
  
  const CustomCategoriesDescreption({super.key, required this.name,required this.titleDetails, required this.imageCategories,
   required this.image1DetailsServices, required this.image2DetailsServices, required this.image3DetailsServices, required this.image4DetailsServices,
    required this.image1DetailsProducts, required this.image2DetailsProducts, required this.image3DetailsProducts, required this.image4DetailsProducts,required this.index,});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    CategoriesControllerImp controllerImp= Get.put(CategoriesControllerImp());
    return InkWell(
      onTap:() {
       controllerImp.goToPage(index, titleDetails, imageCategories, image1DetailsServices, image2DetailsServices, image3DetailsServices, image4DetailsServices, image1DetailsProducts, image2DetailsProducts, image3DetailsProducts, image4DetailsProducts);
      },
      child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8 , vertical: 20),
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: const [
                 BoxShadow( 
                  color: Colors.grey,
                  offset: Offset(2, -5), 
                  blurRadius: 4, 
                  spreadRadius: -2, 
                      ),],
               borderRadius: BorderRadius.circular(24),
               color:isDarkMode?AppColor.darkModeColor:  AppColor.cardColor),
               child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                      padding: const EdgeInsets.only(top: 5 , bottom: 5 , left: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(name ,
                         style: TextStyle( fontSize: 25 ,fontWeight: FontWeight.w500, color: AppColor.primaryLightColor )),
                      Padding(
                           padding: EdgeInsets.symmetric(vertical: 2),
                           child: Text('Description' , style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w500, color: isDarkMode? AppColor.whiteColor: AppColor.blackColor )),
                         ),
                      Text('Lorem ipsum dolor sit amet \nconsectetur. Neque eget viverra amet \nrisus lorem egestas viverra in risus. \nUllamcorper nunc eget lacus feugiat \nrisus sit habitant ullamcorper.' ,
                        style: TextStyle( fontSize: 14 ,fontWeight: FontWeight.w500, color: isDarkMode? AppColor.whiteColor: AppColor.blackColor )),
                      ],),
                    ),
                     Image.asset(imageCategories),
                   ], ),
            ),
    );

}
}



class CustomCategoriesDescreptionServiceProvider extends StatelessWidget {
  final String name;
  final String imageCategories;
  
  //final int index;
  
  const CustomCategoriesDescreptionServiceProvider({super.key, required this.name,required this.imageCategories,});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
   // CategoriesControllerImp controllerImp= Get.put(CategoriesControllerImp());
    return InkWell(
      onTap:() {
       Get.toNamed(AppRoute.doctorsCategory);
      },
      child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8 , vertical: 20),
              height: Image.asset(AppImageAsset.doctorServiceImage).height,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: const [
                 BoxShadow( 
                  color: Colors.grey,
                  offset: Offset(2, -5), 
                  blurRadius: 4, 
                  spreadRadius: -2, 
                      ),],
               borderRadius: BorderRadius.circular(24),
               color:isDarkMode?AppColor.darkModeColor:  AppColor.cardColor),
               child:
                 Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Image.asset(imageCategories),
                    CustomExpanded(flex: 1),
                     Text(name ,
                      style: TextStyle( fontSize: 25 ,fontWeight: FontWeight.w400, )),
                      CustomExpanded(flex: 2),
                     Icon(Icons.edit_outlined),
                     CustomExpanded(flex: 1),
                   ], ),
            ).animate().fade(  begin: .2 , end: 1).scale(transformHitTests: false , duration: 800.ms),
    );

}
}