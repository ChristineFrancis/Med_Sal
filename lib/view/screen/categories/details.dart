import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/details-controller.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/categories/service-and-product.dart';
import 'package:med_sal/view/widget/categories/subtitle-product.dart';
import 'package:med_sal/view/widget/categories/subttle-service.dart';
import 'package:med_sal/view/widget/categories/text-categories.dart';
import 'package:med_sal/view/widget/categories/title.dart';

class DetailsPage extends StatelessWidget {
  
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailsControllerImp());
    return Scaffold(
      //backgroundColor: AppColor.backgroundHomeColor,
      body:GetBuilder<DetailsControllerImp>(builder: (controller) => 
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: ListView(
            children: [
               CustomTitleCategories(titleText:controller.titleDetails!,),
              const CustomTextCategories(),
              const CustomSubTitleService(),
               CustomServiceAndProduct(
                  image1: controller.image1DetailsServices!, text1:'Service 1' ,
                  image2: controller.image2DetailsServices!, text2:'Service 2', 
                  onTap: () { controller.goToServicesBooking(); }, ),
                  const SizedBox(height: 30,),
               
               CustomServiceAndProduct(
                  image1: controller.image3DetailsServices!, text1:'Service 1',
                  image2: controller.image4DetailsServices!, text2:'Service 2',
                   onTap: () { controller.goToServicesBooking();  }, ),

              const CustomSubtitleProduct(),

               CustomServiceAndProduct(
                  image1: controller.image1DetailsProducts!, text1:'Product 1',
                  image2: controller.image2DetailsProducts!, text2:'Product 2',
                   onTap: () {controller.goToProductsBooking();  }, ),
                  const SizedBox(height: 30,),
                  CustomServiceAndProduct(
                  image1: controller.image3DetailsProducts!, text1:'Product 1' ,
                  image2: controller.image4DetailsProducts!, text2:'Product 2' , 
                   onTap: () {controller.goToProductsBooking();  },),

               Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SvgPicture.asset(AppImageAsset.numbersImage),
                  )
               ],),
       ),)
    );
  }
}