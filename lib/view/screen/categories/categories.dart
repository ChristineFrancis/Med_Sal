import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/categories-controller.dart';
import 'package:med_sal/data/data-sourse/static/category-data.dart';
import 'package:med_sal/view/widget/categories/categories-descreption.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
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
         body: ListView.builder(
          itemCount: CategoriesData().categories.length,
          itemBuilder: (BuildContext context, int index) {
            controller.currentIndex=index;
           return CustomCategoriesDescreption(
            name:CategoriesData().categories[index].name,
            titleDetails:CategoriesData().categories[index].titleDetails ,
            imageCategories: CategoriesData().categories[index].imageCategories,
            image1DetailsServices:CategoriesData().categories[index].image1DetailsServices,
            image2DetailsServices:CategoriesData().categories[index].image2DetailsServices,
            image3DetailsServices: CategoriesData().categories[index].image3DetailsServices,
            image4DetailsServices: CategoriesData().categories[index].image4DetailsServices,
            image1DetailsProducts: CategoriesData().categories[index].image1DetailsProducts,
            image2DetailsProducts: CategoriesData().categories[index].image2DetailsProducts,
            image3DetailsProducts: CategoriesData().categories[index].image3DetailsProducts,
            image4DetailsProducts: CategoriesData().categories[index].image1DetailsProducts,
             index: index,
            ).animate().fade(  begin: .2 , end: 1).scale(transformHitTests: false , duration: 800.ms); },
         ),
       ),)
    );
  }
}