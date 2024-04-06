import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:med_sal/controller/home-controller.dart';

class CustomDoctorsPic extends StatelessWidget {
  const CustomDoctorsPic({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(builder: (controller) =>
               Container(height: 200,width: 400,margin: EdgeInsets.symmetric(vertical: 20),
            //color: AppColor.primaryColor,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
              scrollDirection: Axis.horizontal,
              itemCount: controller.images.length,
              itemBuilder: (context , index){
              return Image.asset( controller.images[index]
              //decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.primaryColor))),
              );
              //CustomCategories(categoriesModel: CategoriesModel.fromJson(controller.categories[index]));
              }, ),))

;
  }
}