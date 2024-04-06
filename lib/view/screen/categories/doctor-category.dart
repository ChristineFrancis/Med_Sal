import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/data/data-sourse/static/doctor-category.dart';
import 'package:med_sal/view/widget/categories/doctor-category.dart';

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColor.whiteColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Doctors' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];}, 
          body:
           ListView(
            children:  [
              ListView.builder(
                shrinkWrap: true,
                itemCount: DoctorCategoryData().doctorCategoryData.length ,
                itemBuilder:(BuildContext context, int index) 
                {return CustomDoctorCategory(image: DoctorCategoryData().doctorCategoryData[index].image,
                name: DoctorCategoryData().doctorCategoryData[index].name, 
                onTap: () { 
                if(index==0)
                {
                   DoctorCategoryData().doctorCategoryData[index].onTap();
                }
                else if(index==1)
                {
                   DoctorCategoryData().doctorCategoryData[index].onTap();
                }
                 } ,);} ),
                  ], ),
      ),
    );
  }
}