import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/home/custom-seeall.dart';
import 'package:med_sal/view/widget/home/custom-text-inside-container.dart';
import 'package:med_sal/view/widget/home/custom-text.dart';

class CustomServicesHome extends StatelessWidget {
  const CustomServicesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
                   padding: EdgeInsets.only(right: 150 , top: 30 , bottom: 30),
                   child: CustomTextInsideContainerHome(text: 'Our Services', image:  AppImageAsset.sevicesHome,paddingTop: 25 , paddingRight: 15,width: 299, paddingLeft: 0)),
          Padding(
                   padding: EdgeInsets.only(right: 50),
                   child: CustomText(text:"Lorem ipsum dolor sit amet \nconsectetur. Quis sollicitudin morbi" , ), ),
          Padding(
                    padding: EdgeInsets.only(bottom: 50 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       CustomText(text :"nisi tincidunt lorem ." ),
                       SeeAllText(),
                      ], ),),
      ],);
  }
}