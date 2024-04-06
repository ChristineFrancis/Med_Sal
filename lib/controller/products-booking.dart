
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/booking/custom-product-booking.dart';

abstract class BrodoctsBookingController extends GetxController
{

}
class BrodoctsBookingControllerImp extends BrodoctsBookingController
{
  List <Widget> productBooking=
  [
    const CustomProductBooking(image: AppImageAsset.productBooking1Image,),
    const CustomProductBooking(image: AppImageAsset.productBooking2Image,),
    const CustomProductBooking(image: AppImageAsset.productBooking3Image,),
  ];
}