import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/home/custom-seeall.dart';
import 'package:med_sal/view/widget/home/custom-text-inside-container.dart';

class CustomOpinionsHome extends StatelessWidget {
  const CustomOpinionsHome({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return  Row(
            children: [
             Column(
               children: [
                 Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('Doctor' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , color:isDarkMode?AppColor.whiteColor: AppColor.blackColor),), ),
                 Padding(
                   padding: EdgeInsets.only(top: 30),
                   child: SeeAllText(),
                          ),
                         ],),
              Padding(
               padding: EdgeInsets.only(left: 55  , top: 10),
                child: CustomTextInsideContainerHome(text: 'What Our \nClients Say', image:  AppImageAsset.aboutUsHome,
                       paddingTop: 15,paddingRight: 0,paddingLeft: 30,)
                               ),
                              ],);
  }
}