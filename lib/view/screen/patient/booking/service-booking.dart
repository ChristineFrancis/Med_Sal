import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/products-booking.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/booking/custom-service.dart';
import 'package:med_sal/view/widget/booking/custom-title-service-booking.dart';

class ServiceBookingPage extends StatelessWidget {
  const ServiceBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BrodoctsBookingControllerImp());
    return  Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Services booking' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         backgroundColor:  AppColor.backgroundAppbarColor,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];}, 
          body:
           ListView(
            children: [
            const CustomTitleServiceBooking(),
             CustomServiceBooking(serviceName: 'Teeth whitening', serviceNum: '1', onTap: () {Get.toNamed(AppRoute.detailsSevicesBooking);  },),
             CustomServiceBooking(serviceName: 'Laisk eye surgery', serviceNum: '2', onTap: () { Get.toNamed(AppRoute.detailsSevicesBooking) ;},),
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