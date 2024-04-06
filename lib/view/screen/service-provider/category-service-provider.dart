import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/categories-controller.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/categories/categories-descreption.dart';

class CategoriesServiceProviderPage extends StatelessWidget {
  const CategoriesServiceProviderPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(CategoriesControllerImp());
    return  Scaffold(
      body:GetBuilder<CategoriesControllerImp>(
       builder: (controller) => 
       NestedScrollView(
         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Categories' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         //backgroundColor:  AppColor.backgroundAppbarColor,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];},
         body:ListView(
          children: [
            CustomCategoriesDescreptionServiceProvider(name: 'Doctor', imageCategories: AppImageAsset.doctorServiceImage,),
            CustomCategoriesDescreptionServiceProvider(name: 'Pharmacy', imageCategories: AppImageAsset.pharmacyServiceImage,),
            CustomCategoriesDescreptionServiceProvider(name: 'Hospital', imageCategories: AppImageAsset.hospitalServiceImage,),
            CustomCategoriesDescreptionServiceProvider(name: 'Lab', imageCategories: AppImageAsset.labServiceImage,),
            CustomCategoriesDescreptionServiceProvider(name: 'Clinic', imageCategories: AppImageAsset.clinicServiceImage,),
          ],)
       ),)
    );
  }
}

