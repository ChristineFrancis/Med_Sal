import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/controller/products-booking.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/booking/custom-product-booking.dart';

class ProductBookingPage extends StatelessWidget {
  const ProductBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BrodoctsBookingControllerImp());
    return  Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Products booking' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         backgroundColor:  AppColor.backgroundAppbarColor,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];}, 
          body:
           ListView(
            children: [
              const CustomProductBooking(image: AppImageAsset.productBooking1Image,),
              const CustomProductBooking(image: AppImageAsset.productBooking2Image,),
              const CustomProductBooking(image: AppImageAsset.productBooking3Image,),
                  Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: SvgPicture.asset(AppImageAsset.numbersImage),
                 )
                  ],
                        ),
      ),
    );
  }
}