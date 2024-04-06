import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomServiceAndProduct extends StatelessWidget {
  final String image1;
  final String text1;
  final String image2;
  final String text2;
  final Function() onTap;

  const CustomServiceAndProduct({
    super.key,
    required this.image1,
    required this.text1,
    required this.image2,
    required this.text2, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap:onTap ,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: CustomRectangular(
                image: image1,
                text: text1,
              ),
            ),
            const SizedBox(width: 10), 
            Expanded(
              child: CustomRectangular(
                image: image2,
                text: text2,
              ),
            ),
          ],),
      ),
    );
  }
}

class CustomRectangular extends StatelessWidget {
   final String  image;
  final String text;
  const CustomRectangular({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 20),
                height: 200,
               // width: 170,
               width:Get.size.width/2.5 ,
                decoration: BoxDecoration(
                  color:isDarkMode?AppColor.darkModeColor:  AppColor.cardColor,
                  boxShadow: [BoxShadow(
            color:isDarkMode?AppColor.darkModeColor:  AppColor.searchColor,
            offset: Offset(-3, 4), 
            blurRadius: 1,
            spreadRadius: 0,
          ),
                    ] ,
                   // border: Border.all(color:AppColor.searchColor ),
                 // color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20)),
                  
                  child: Center(
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        const SizedBox(height: 12,),
                        Image.asset(image),
                        Text(text,
                         style:  TextStyle( fontSize: 20  , fontWeight: FontWeight.w500 , color: isDarkMode? AppColor.whiteColor :AppColor.blackColor)),    
                          Text('Cost 1',
                         style: TextStyle( fontSize: 20  , fontWeight: FontWeight.w400 ,  color: isDarkMode? AppColor.whiteColor :AppColor.blackColor)),
                         const SizedBox(height: 1,),
                      ]),
                  ),);
  }
}