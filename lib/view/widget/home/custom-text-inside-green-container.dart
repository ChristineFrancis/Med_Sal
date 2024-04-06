import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';

class TextInsideGreenContainer extends StatelessWidget {
  const TextInsideGreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return  Stack(
                   children: [
                     SvgPicture.asset( AppImageAsset.bigRectangularHome),
                      Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 50),
                           child: Text(" Lorem ipsum dolor sit amet \nconsectetur. Sed commodo \n faucibus accumsan faucibus nunc \n gravida." ,
                           style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w500 , color: isDarkMode? AppColor.whiteColor :AppColor.blackColor ),),
                                ),
                
                         Padding(
                       padding: const EdgeInsets.only(top: 40 , left: 20),
                       child: Text("Lorem ipsum dolor sit amet \nconsectetur. Sed commodo \n faucibus accumsan faucibus nunc \n gravida." ,
                       style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w500 ,  color: isDarkMode? AppColor.whiteColor :AppColor.blackColor ),),
                               ),
                
                      Padding(
                       padding: const EdgeInsets.only(top: 40 , left: 10),
                       child: Text("Lorem ipsum dolor sit amet \nconsectetur. Sed commodo \n faucibus accumsan faucibus nunc \n gravida." ,
                       style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w500 ,  color: isDarkMode? AppColor.whiteColor :AppColor.blackColor ),),
                         ),
                       ],),
                   ], );
                   }}